import React from 'react'; 
import { Provider } from 'react-redux';
import SplashContainer from './splash_container'; 
import SessionFormContainer from './session_form_container'; 
import SignupContainer from './signup_form_container'; 
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import NavContainer from './navbar_container'; 

import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

const App = () => (
  <div>
    <nav className="nav-main">
      <Link to="/" className="logo">Enchant</Link>
      <NavContainer />
    </nav>
    <header>
      <h1> ENCHAAAAAAAAAAANNTT</h1>
    </header>

    <div>
      <SplashContainer /> 
    </div>

    <Switch>
      <AuthRoute exact path="/signup" component={SignupContainer} />
      <AuthRoute exact path="/login" component={SessionFormContainer} />
    </Switch>

  </div>
);

export default App; 