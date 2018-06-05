import React from "react";
import ProjectShowContainer from "./project_show_container";
import Modal from "react-modal";
import { Route, withRouter, Link } from "react-router-dom";

class ProjectIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.pushURL = this.pushURL.bind(this);
  }

  pushURL() {
    const url = `/project/${this.props.project.id}`;
    this.props.history.push({
      pathname: url, 
      state: {modal: true} 
    });
  }

  render() {
    const { project } = this.props;
    const { author } = this.props.project;
    const fname = author.fname ? author.fname : author.username;
    const lname = author.lname ? author.lname : "";
    return (
      <div>
        <div className="project-card">
          <img
            onClick={this.pushURL}
            src={project.thumbnail_url}
            className="thumb pointer"
          />
          <div className="details">
            <div className="title">{project.title}</div>
            <div className="owners">
              <img id="card-user-icon" src={author.image} />
              <p className="author-card">
                {fname} {lname}
              </p>
            </div>
            <div className="category">
              <p>{project.category}</p>
              <i className="fa fa-bookmark" aria-hidden="true" />
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(ProjectIndexItem);
