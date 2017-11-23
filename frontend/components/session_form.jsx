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

  componentWillUnmount(){
    this.props.clearErrors([]); 
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, idx) => (
          <li key={`error${idx}`}>
            { error }
          </li>
        ))}
      </ul>
    ); 
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
      <div className="login-form-container">
        <form onSubmit={this.handleSubmit} className="login-form-box">
          <div className="login-form">
            {this.renderErrors()}
              <input type="text"
                value={ username }
                onChange={this.update('username')}
                className="login-input"
                placeholder="User name"
              />
                    
              <input type="password"
                value={ password }
                onChange={this.update('password')}
                className="login-input"
                placeholder="Password"
              />
              <input type="submit" value="Login" className="signin-button"/>

            <Link to="/signup" > Sign up here</Link> 

              <button type="submit" value="Demo Login"> Demo login </button>
            
          </div>
        </form>
      </div>

    );
  }

}

export default withRouter(SessionForm); 