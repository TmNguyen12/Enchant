import React from 'react'; 
import ItemsUploadContainer from './items_upload_container'; 
import Modal from 'react-modal'; 
import { Link } from 'react-router-dom'; 

class ProjectEdit extends React.Component {
  constructor(props){
    super(props); 
    this.state = { 
      project: {
        id: this.props.match.params.projectId, 
        title: this.props.project.title, 
        description: this.props.project.description, 
        category: this.props.project.category, 
        author_id: this.props.project.author_id, 
      }}; 
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillMount() {
    this.props.fetchProject(parseInt(this.state.project.id)); 
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const project = Object.assign({}, this.state);
    project.author_id = this.props.currentUser.id; 
    this.props.editProject(project.id); 
    this.props.history.push(`/project/${this.props.project.id}`); 
  }

  render() {
    const project  = this.props.project[0]; 
    if (!project) {
      return null; 
    } 
    return( 
        <div className="edit-project-page">
          <form className="project-edit-form">
            <label>Project Title:
                    <input type="text"
                      value={ project.title }
                      onChange={this.update('title')}
                      className="project-input"
                      placeholder={project.title}
                    />
            </label>
            <label>Description:
                    <input type="text"
                      value={ project.description }
                      onChange={this.update('description')}
                      className="project-input"
                    />
            </label>
            <label>Category:
                    <input type="text"
                      value={ project.category }
                      onChange={this.update('category')}
                      className="project-input"
                    />
            </label>
          <button onClick={this.handleSubmit}>Update Project</button>
          </form>
          <div className="project-edit-items">
            <div className="item-upload">
              <ItemsUploadContainer project_id={project.id}/>
            </div>
          </div>
        </div>
    ); 
  }
}

export default ProjectEdit; 