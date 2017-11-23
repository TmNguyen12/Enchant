import React from 'react'; 
import { Link, withRouter } from 'react-router-dom'; 


class SessionForm extends React.Component {
  constructor (props) {
    super(props);
    this.state ={
      username: "", 
      password: ""
    }; 
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    // this.props.splashForm(user);
    this.props.login(user); 
  }

  render () {
    const { username, password } = this.state;


    return(
      <div className="login-form">
        <form onSubmit={this.handleSubmit} className="login-form-box">
          <div className="login-form">
            <label>Username:
              <input type="text"
                value={ username }
                onChange={this.update('username')}
                className="login-input"
              />
            </label>
            <br/>
            <label>Password:
              <input type="password"
                value={ password }
                onChange={this.update('password')}
                className="login-input"
              />
            </label>
            <input type="submit" value="Login"/>
            <Link to="signup"> Sign up here</Link> 
          </div>
        </form>
      </div>

    );
  }

}

export default withRouter(SessionForm); 