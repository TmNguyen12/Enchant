import React from 'react'; 
import ItemsUploadContainer from './items_upload_container'; 
import Modal from 'react-modal'; 
import { Link } from 'react-router-dom'; 
import { pullProjectIdFromURL } from '../util/project_api_util'; 

class ProjectEdit extends React.Component {
  constructor(props){
    super(props); 
    // this.state = { 
    //   project: {
    //     id: this.props.match.params.projectId, 
    //     title: this.props.project.title, 
    //     description: this.props.project.description, 
    //     category: this.props.project.category, 
    //     author_id: this.props.project.author_id, 
    //   }}; 
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this); 
    // this.props.editProject = this.props.editProject.bind(this); 
  }

  componentWillMount() {
    const { location } = this.props;
    let projectId = pullProjectIdFromURL(location.pathname); 
    this.props.fetchProject(projectId); 
    this.props.fetchAllItems(projectId); 
  }

  componentWillReceiveProps(newProps){
    debugger 
    if (newProps.project){
      this.setState({
        project: {
          id: newProps.project.id, 
          title: newProps.project.title, 
          description: newProps.project.description, 
          category: newProps.project.category, 
          author_id: newProps.project.author_id, 
        }
      }); 
    }
  }

  update(field) {
    return e => this.setState({ 
      project: {
        [field]: e.currentTarget.value
      }
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    let { project } = this.state; 
    project.author_id = this.props.currentUser.id; 
    if (this.props.items){
      project.thumbnail = this.props.thumbnail; 
    }
    this.props.updateProject(project); 
    this.props.history.push(`/project/${project.id}`); 
  }

  render() {
    if (!this.props.project) {
      return null; 
    } 
    let { project } = this.state; 
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