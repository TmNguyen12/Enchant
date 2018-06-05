import React from 'react';
import Modal from 'react-modal';
import ItemsIndexContainer from '../items/items_index_container';
import CommentsContainer from '../comments/comments_container';
import ReactSVG from 'react-svg';

class ProjectShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = { id: this.props.match.params.projectId };
    this.handleLike = this.handleLike.bind(this);
    this.didReceiveNewProject = this.didReceiveNewProject.bind(this);
  }

  componentWillMount() {
    if (this.props.project) {
      this.props.fetchProject(this.props.project.id);
      this.setState({ id: this.props.project.id });
    } else {
      this.props.fetchProject(this.state.id);
      this.setState({ id: parseInt(this.props.match.params.projectId) });
    }
  }

  componentWillReceiveProps(newProps) {
    if (
      this.didReceiveNewProject(this.props.viewProject, newProps.viewProject)
    ) {
      this.props.fetchProject(this.state.id);
      this.setState({ viewProject: newProps.viewProject });
    }
  }

  didReceiveNewProject(oldProject, newProject) {
    if (!oldProject || newProject.id !== oldProject.id) {
      return true;
    } else {
      return false;
    }
  }

  componentWillUnmount() {
    this.props.clearProject();
  }

  handleLike() {
    const { liked_by_current_user } = this.props.viewProject;
    if (liked_by_current_user === true) {
      this.props.unLike(this.props.viewProject);
    } else {
      this.props.makeLike(this.props.viewProject);
    }
  }

  render() {
    const { viewProject } = this.props;
    if (viewProject) {
      var { author } = this.props.viewProject;
      var likeButton = this.props.viewProject.liked_by_current_user
        ? 'Thank you!'
        : 'Appreciate Project';
      var fname = author.fname ? author.fname : author.username;
      var lname = author.lname ? author.lname : '';
    }

    if (!viewProject) {
      return null;
    }
    return (
      <div className={`project-show ${this.props.classToAdd}`}>
        <div className="sidebar">
          <div className="sidebar-user-info">
            <div className="name-follow">
              <h2>
                {fname} {lname}r
              </h2>
              <button className="follow-button">Follow</button>
            </div>
            <img id="comment-user-icon" src={author.image} />
          </div>
          <div className="sidebar-project-info">
            <h2>{viewProject.title}</h2>
            <h4>{viewProject.category}</h4>
            <div className="stats">
              <div className="stats-likes">
                <i className="fa fa-thumbs-up" aria-hidden="true" />
                {this.props.viewProject.likes}
              </div>
              <div className="stats-comments">
                <i className="fa fa-comments" aria-hidden="true" />
                {this.props.commentCount}
              </div>
            </div>
            <div className="publish-date">
              Published: {viewProject.created_at}
            </div>
          </div>
          <div className="sidebar-misc-links">
            <button onClick={this.handleLike}>{likeButton}</button>
          </div>
        </div>
        <div className="items-index">
          <ItemsIndexContainer projectId={viewProject.id} />
          <div className="comments">
            <CommentsContainer projectId={viewProject.id} />
          </div>
        </div>
      </div>
    );
  }
}

export default ProjectShow;
