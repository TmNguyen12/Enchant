import React from 'react'; 
// import { Link } from 'react-router-dom'; 

class Splash extends React.Component {
  constructor(props) {
    super(props); 
    this.state ={
      username:"", 
      password: "", 
    }; 
    this.demoLogin = this.demoLogin.bind(this); 
  }
  
  demoLogin(){
    const demo = {
      username: "demo", 
      password: "password"
    }; 
    this.props.login(demo); 
  }

  notLoggedIn(){
    return (
      <div className="splash-image">
        <h1 className="splash-image-title">
          "Showcase & Discover"
          <br/>
          "Creative Work"
        </h1>
        <button className="demo-button" onClick={this.demoLogin}>Demo Login</button>
      </div>
    );
  } 

  loggedIn(){
    return (
      <div className="hide"></div>
    );
  }

  // whichOne({ currentUser }) {
  //   let splashExec; 
  //   if (currentUser) {
  //     splashExec = () => loggedIn(); 
  //   } else {
  //     splashExec = () => notLoggedIn(); 
  //   } 
  // }

  render() {
    return (
      this.props.currentUser ? this.loggedIn() : this.notLoggedIn() 
    ); 
    
    // return (
    //   splashExec()
    // ); 
  }
}
export default Splash; 
