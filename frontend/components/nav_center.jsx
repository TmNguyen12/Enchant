import React from "react";
import { Link } from "react-router-dom";

class NavCenter extends React.Component {
  constructor() {
    super();
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
      <ul className="nav-center-links">
        <li onClick={this.demoLogin}>Discover</li>
        <li>
          <a href="https://www.linkedin.com/in/truong-nguyen-2821471b/">
            LinkedIn
          </a>
        </li>
        <li>
          <a href="https://github.com/TmNguyen12/Enchant">GitHub</a>
        </li>
        <button>
          {" "}
          <Link to="/signup">Sign Up With Email</Link>
        </button>
      </ul>
    );
  }

  loggedIn() {
    return (
      <ul className="nav-center-links">
        <li>
          <a href="https://www.linkedin.com/in/truong-nguyen-2821471b/">
            {" "}
            LinkedIn{" "}
          </a>
        </li>
        <li>
          <a href="https://github.com/TmNguyen12/Enchant"> Github </a>
        </li>
        <button>
          {" "}
          <Link to="/project/create">Create a Project</Link>
        </button>
      </ul>
    );
  }

  render() {
    return this.props.currentUser ? this.loggedIn() : this.notLoggedIn();
  }
}

export default NavCenter;
