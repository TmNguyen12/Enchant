import React from "react";
// import { Link } from 'react-router-dom';

class Splash extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.demoLogin = this.demoLogin.bind(this);
  }

  demoLogin() {
    const demo = {
      username: "Felurian",
      password: "password"
    };
    this.props.login(demo);
  }

  notLoggedIn() {
    return (
      <div className="splash-content">
        <div className="splash-image" />
        <div className="splash-title">
          <h1 className="splash-image-title">
            Showcase & Discover
            <br />
            Creative Work
          </h1>
          <button className="demo-button" onClick={this.demoLogin}>
            Demo Login
          </button>
        </div>
      </div>
    );
  }

  loggedIn() {
    return <div className="hide" />;
  }

  render() {
    return this.props.currentUser ? this.loggedIn() : this.notLoggedIn();
  }
}
export default Splash;
