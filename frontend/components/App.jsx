import React from 'react';
import { Provider } from 'react-redux';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import NavContainer from './navbar/navbar_container';
import NavCenterContainer from './navbar/nav_center_container';
import SignupContainer from './signup/signup_form_container';
import SessionFormContainer from './session/session_form_container';
import ProjectCreateContainer from './project/project_create_container';
import MainComponent from './main/main_container';
import ProjectEditContainer from './project/project_edit_container';
import ModalWrapper from './modal/modal';
import { pullProjectIdFromURL } from '../util/project_api_util';

import { Route, Switch, Link, withRouter } from 'react-router-dom';

class App extends React.Component {
  render() {
    const { location } = this.props;

    let tempProject = {};

    // to pull out the project number from the URL
    // let myRegex = /[^\/]+$/g;
    // tempProject['id'] = parseInt(myRegex.exec(location.pathname));
    tempProject['id'] = pullProjectIdFromURL(location.pathname);

    return (
      <div className="all-content">
        <nav className="nav-main">
          <div>
            <Link to="/" className="logo">
              Enchānt
            </Link>
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

        <div className="main-content">
          <Switch>
            <ProtectedRoute
              path="/project/create"
              component={ProjectCreateContainer}
            />
            <Route exact path="/" component={MainComponent} />
            <ProtectedRoute
              exact
              path="/project/edit/:projectId"
              component={ProjectEditContainer}
            />
            <Route
              exact
              path="/project/:projectId"
              render={() => (
                <div>
                  <ModalWrapper project={tempProject} />
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
