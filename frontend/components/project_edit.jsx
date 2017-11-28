import React from 'react'; 
import ItemsUploadContainer from './items_upload_container'; 
import Modal from 'react-modal'; 

class ProjectEdit extends React.Component {
  constructor(props){
    super(props); 
    this.state = { 
      project: {
        id: this.props.match.params.projectId
      }}; 
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillMount() {
    this.props.receiveProject(this.state.project.id); 
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
  }

  render() {
    debugger
    const { project } = this.props; 
    return( 
        <div className="create-project-page">
          <form className="project-info-form">
            <label>Project Title:
                    <input type="text"
                      value={ project.title }
                      onChange={this.update('title')}
                      className="project-input"
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
          </form>
          <button onClick={this.handleSubmit}>Update Project</button>
        </div>  
    ); 
  }
}

export default ProjectEdit; 