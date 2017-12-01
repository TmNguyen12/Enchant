import React from 'react'; 
import ItemsUploadContainer from './items_upload_container'; 
import Modal from 'react-modal'; 
import { Link } from 'react-router-dom'; 

class ProjectCreate extends React.Component {
  constructor(){
    super(); 
    this.state = {
    title:' ', 
    description:'', 
    category: '', 
    author_id: ''
    }; 
    this.handleSubmit = this.handleSubmit.bind(this);
    this.openModal = this.openModal.bind(this);
    this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }
   // default modal syntax from https://github.com/reactjs/react-modal
   openModal() {
    this.setState({modalIsOpen: true});
  }

  afterOpenModal() {
    // references are now sync'd and can be accessed.
    // this.subtitle.style.color = '#f00';
  }

  closeModal() {
    // let oldLoc = this.props.history.goBack(); 
    this.setState({modalIsOpen: false});
    this.props.history.push('/');
  }

  componentWillMount(){
    this.openModal(); 
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
    this.props.createProject(project).then( action => {      
      this.closeModal(); 
      this.props.history.push(`/project/edit/${Object.keys(action.projects)[0]}`); 
    }); 
  }

  render() {
    return(
      <Modal
        isOpen={this.state.modalIsOpen}
        onAfterOpen={this.afterOpenModal}
        onRequestClose={this.closeModal}
        className={{
          base: 'create-modal',
          afterOpen:'create-modal-open', 
          beforeClose: 'create-modal-close'
        }}
        overlayClassName={{
          base: 'create-modal-overlay', 
          afterOpen:'create-modal-overlay-open',
          beforeClose: 'create-modal-overlay-close'  
        }}
      > 
        <div className="create-project-page">
          <form className="project-info-form">
            <h2 className="fs-title">Create Your Project</h2>
            <input type="text"
              value={ this.state.title }
              onChange={this.update('title')}
              className="project-input"
              placeholder="Title"
            />
            <input type="text"
              value={ this.state.description }
              onChange={this.update('description')}
              className="project-input"
              placeholder="Description"
            />
            <input type="text"
              value={ this.state.category }
              onChange={this.update('category')}
              className="project-input"
              placeholder="Category"
            />
            <button onClick={this.handleSubmit}>Create Project</button>
          </form>

        </div>
      </Modal>
    ); 
  }

}

export default ProjectCreate; 