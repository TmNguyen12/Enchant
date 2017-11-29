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

import {
  Route,
  Redirect,
  Switch,
  Link, 
  HashRouter
} from 'react-router-dom';

const App = () => (
  <div className="all-content">
    <nav className="nav-main">
      <div>
        <Link to="/" className="logo">Enchant</Link>
      </div>
      <div>
        <NavCenterContainer /> 
      </div>
      <div>
        <NavContainer />
      </div>
    </nav>

    <Route exact path="/signup" component={SignupContainer} />
    <Route exact path="/login" component={SessionFormContainer} />
    <Route exact path="/project/create" component={ProjectCreateContainer} />

    <div className="main-content">
      <Route exact path="/" component={MainComponent} />
      <ProtectedRoute exact path="/project/edit/:projectId" component={ProjectEditContainer} />   
    </div> 
  </div>
);

export default App;

