import React from 'react'; 
import { Provider } from 'react-redux';
import SplashContainer from './splash_container'; 
import SessionFormContainer from './session_form_container'; 
import SignupContainer from './signup_form_container'; 
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import NavContainer from './navbar_container'; 
import ProjectIndexContainer from './project_index_container'; 
import MainComponent from './main_container'; 
import NavCenterContainer from './nav_center_container'; 
import ProjectCreateContainer from './project_create_container'; 
import ProjectEditContainer from './project_edit_container'; 
import ProjectShowContainer from './project_show_container'; 
import Modal from 'react-modal'; 
import ModalWrapper from './modal'; 

import {
  Route,
  Redirect,
  Switch,
  Link, 
  HashRouter,
  withRouter
} from 'react-router-dom';

class App extends React.Component {
  constructor(props){
    super(props);
    this.previousLocation = this.props.location;

    //normal modal `
    this.state = {modelIsOpen: false }; 
    this.openModal = this.openModal.bind(this);
    this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }
  
  componentWillUpdate(nextProps) {
    const { location } = this.props;
    if (
      nextProps.history.action !== "POP" &&
      (!location.state || !location.state.modal)
    ) {
      this.previousLocation = this.props.location;
    }
  }

  openModal() {
    this.setState({modalIsOpen: true});
    const url = `/project/${this.props.project.id}`;
    debugger 
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

  render() {
    const { location } = this.props;
    debugger 
    const isModal = !!(
      location.state &&
      location.state.modal &&
      this.previousLocation !== location
    );

    if (isModal){
      this.setState({modalIsOpen: true});
    }
    let projectz = {}
    projectz['id'] = parseInt(location.pathname.slice(-1)); 

    return (
      <div className="all-content">
        <nav className="nav-main">
          <div>
            <Link to="/" className="logo">Enchānt</Link>
          </div>
          <div className="nav-bar-center">
            <NavCenterContainer /> 
          </div>
          <div>
            <NavContainer />
          </div>
        </nav>
    
        <Route exact path="/signup" component={SignupContainer} />
        <Route exact path="/login" component={SessionFormContainer} />
        <ProtectedRoute exact path="/project/create" component={ProjectCreateContainer} />
    
        <div className="main-content">
          <Switch location={isModal ? this.previousLocation : location}>
            <Route exact path="/" component={MainComponent} />
            <ProtectedRoute exact path="/project/edit/:projectId" component={ProjectEditContainer} />   

            <Route
              exact path="/project/:projectId"
              render={() => (
                <div>
                {/* {isModal ? null : <ProjectShowContainer project={projectz}/>} */}
                {isModal ? null : <ModalWrapper project={projectz}/>}
               
                  {/* <Modal onClose={() => this.props.history.push("/")} />;  */}
                </div>
              )}
              />
          </Switch>
        </div> 
      </div>
    );
  }
}

export default withRouter(App);

