import React from 'react';
import { Link } from 'react-router-dom';

const sessionLinks = () => (
  <nav className="login-signup">
    <Link to="/login">Login</Link>
    <Link to="/signup">Sign up!</Link>
  </nav>
);

const personalGreeting = (currentUser, logout) => {
 return (
  <nav className="login-signup">
        <button className="header-button" onClick={logout}>Log Out</button>
        <a className="header-name">{currentUser.username}!</a>
        <img src={currentUser.image_url}/>
   </nav>

 ); 
};

const Navigation = ({ currentUser, logout }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
);

export default Navigation;
