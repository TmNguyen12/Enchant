import React from 'react'; 
import ProjectShowContainer from './project_show_container'; 
import Modal from 'react-modal'; 
import { Route, withRouter, Link } from 'react-router-dom'; 

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
    // this.setState({modalIsOpen: true});
    const url = `/project/${this.props.project.id}`;
    this.props.history.push(url);
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
          <img onClick={this.openModal} src={project.thumbnail_url} className="thumb pointer"/>
           {/* <Link to={{ pathname: "/project/:projectid", state: { modelIsOpen: true } }}>
           </Link>  */}
          
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
          </div>
        </div>
        <Modal
          isOpen={this.state.modalIsOpen}
          closeTimeoutMS={500}   
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
            {/* <Route exact path="/project/:projectid/" component={ProjectShowContainer}/> */}
        </div>
      </Modal>
    </div>
    ); 
  }
}


export default withRouter(ProjectIndexItem); 