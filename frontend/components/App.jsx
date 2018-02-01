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
  render() {
    const { location } = this.props;
 
    let tempProject = {}; 

    // to pull out the project number from the URL
    let myRegex = /[^\/]+$/g; 
    tempProject['id'] = parseInt(myRegex.exec(location.pathname)); 

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
          <Switch>
            <Route exact path="/" component={MainComponent} />
            <ProtectedRoute exact path="/project/edit/:projectId" component={ProjectEditContainer} />   
            <Route
              exact path="/project/:projectId"
              render={() => (
                <div>
                  <ModalWrapper project={tempProject}/>
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

