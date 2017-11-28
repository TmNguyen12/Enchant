import React from 'react'; 
import { Provider } from 'react-redux';
import SplashContainer from './splash_container'; 
import SessionFormContainer from './session_form_container'; 
import SignupContainer from './signup_form_container'; 
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import NavContainer from './navbar_container'; 
import ProjectIndexContainer from './project_index_container'; 
import MainComponent from './main_container'; 
import NavCenter from './nav_center_container'; 
import ProjectCreateContainer from './project_create_container'; 

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
        <NavCenter /> 
      </div>
      <div>
        <NavContainer />
      </div>
    </nav>

    <AuthRoute exact path="/signup" component={SignupContainer} />
    <AuthRoute exact path="/login" component={SessionFormContainer} />


    <div className="main-content">
      <Switch>
          <Route exact path="/" component={MainComponent} />
          <ProtectedRoute exact path="/project/create" component={ProjectCreateContainer} />
      </Switch>
    </div>
    
  </div>
);

export default App;

