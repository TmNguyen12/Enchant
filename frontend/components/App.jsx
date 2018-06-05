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
import ProjectShowContainer from './project/project_show_container';

import {
  Router,
  Route,
  Switch,
  Link,
  withRouter,
  browserHistory
} from 'react-router-dom';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      previousLocation: this.props.location
    };
  }

  componentWillUpdate(nextProps) {
    const { location } = this.props;
    // set previousLocation if props.location is not modal
    if (
      nextProps.history.action !== 'POP'
      // (!location.state || !location.state.modal)
    ) {
      this.state.previousLocation = this.props.location;
    }
  }

  render() {
    const { location } = this.props;

    const isModal = Boolean(location.state &&
      location.state.modal &&
      this.previousLocation !== location); // not initial render

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
          <Switch location={isModal ? this.state.previousLocation : location}>
            <Route exact path="/" component={MainComponent} />
            <ProtectedRoute
              path="/project/create"
              component={ProjectCreateContainer}
            />
            <ProtectedRoute
              exact
              path="/project/edit/:projectId"
              component={ProjectEditContainer}
            />
            <Route
              path="/project/:projectId"
              render={() => <ProjectShowContainer classToAdd={'noModal'} />}
            />
          </Switch>
          {isModal ? (
            <Route
              path="/project/:projectId"
              render={() => (
                <div>
                  <ModalWrapper project={tempProject} />
                </div>
              )}
            />
          ) : null}
        </div>
      </div>
    );
  }
}

export default withRouter(App);
