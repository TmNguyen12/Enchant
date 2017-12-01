import React from 'react'; 
import { Link } from 'react-router-dom'; 

class NavCenter extends React.Component {
  constructor(){
    super(); 
    this.demoLogin = this.demoLogin.bind(this);   
  } 

  demoLogin(){
    const demo = {
      username: "Felurian", 
      password: "password"
    }; 
    this.props.login(demo); 
  }
  
  notLoggedIn(){
    return (
      <ul className="nav-center-links">
        <li onClick={this.demoLogin}>Discover</li>
        <li>LinkIn</li>
        <li>GitHub</li>
        <button> <Link to="/signup">Sign Up With Email</Link></button>
      </ul>
    ); 
  }
  
  loggedIn(){
    return (
      <ul className="nav-center-links">
        <li><Link to="/"> Activity </Link></li>
        <li><Link to="/"> Discover </Link></li>
        <li><Link to="/"> Live </Link></li>
        <li><Link to="/"> Profile </Link></li>
        <button> <Link to="/project/create">Create a Project</Link></button>
      </ul>
    );
  }

  render() {
    return (
      this.props.currentUser ? this.loggedIn() : this.notLoggedIn() 
    ); 
  }
}

export default NavCenter; 

