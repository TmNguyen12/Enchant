import React from 'react'; 
import ProjectShowContainer from './project_show_container'; 
import Modal from 'react-modal'; 
import { withRouter } from 'react-router-dom'; 

class ProjectIndexItem extends React.Component {
  // modal code from Dan Abramov portal examples 
  constructor(props) {
    super(props);

    //normal modal `
    this.state = {modelIsOpen: false }; 
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
  }

  render () {
    const { project } = this.props;
    const { author } = this.props.project; 
    const fname = (author.fname) ? author.fname : author.username; 
    const lname = (author.lname) ? author.lname : ""; 

    return (
      <div>
        <div className="project-card">
          <img onClick={this.openModal} src={project.thumbnail_url} className="thumb pointer" />
          <div className="details"> 
            <div className="title">{project.title}</div>
            <div className="owners">
              <img id='card-user-icon'src={author.image} />
              <p className="author-card">{fname} {lname}</p>
            </div>
            <div className="category">
              <p>{project.category}</p>
              <i className="fa fa-bookmark" aria-hidden="true"></i>
            </div>
            {/* <div className="stats"> Likes and comments</div> */}
          </div>
        </div>

        <Modal
          isOpen={this.state.modalIsOpen}
          closeTimeoutMS={500}   // add after close, wait this long and then close 
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          className={{
            base: 'view-modal',
            afterOpen:'view-modal-open', 
            beforeClose: 'view-modal-close'
          }}
          overlayClassName={{
            base: 'view-modal-overlay', 
            afterOpen:'view-modal-overlay-open',
            beforeClose: 'view-modal-overlay-close'  
          }}
         >
        <div className="modal">
            <ProjectShowContainer project={project}/> 
        </div>
      </Modal>
    </div>
    ); 
  }
}


export default withRouter(ProjectIndexItem); 