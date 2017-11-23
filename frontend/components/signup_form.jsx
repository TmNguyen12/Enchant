import React from 'react'; 
import { Link, withRouter } from 'react-router-dom'; 

class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '', 
      password: '', 
      location: '', 
      about_me: '', 
    }; 
    this.handleSubmit = this.handleSubmit.bind(this); 
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e){
    e.preventDefault();
    const user = this.state; 
    this.props.signup({user}); 
  }

  render () {
    const { username, about_me, password, location } = this.state; 
    return (
      <div className="signup-form-container">
        <form className="signup-form-box" onSubmit={this.handleSubmit}>
          <div className="signup-form">
            <label>Username:
              <input type="text"
                value={ username }
                onChange={this.update('username')}
                className="signup-input"
              />
            </label>
            <label>Password:
              <input type="text"
                value={ password }
                onChange={this.update('password')}
                className="signup-input"
              />
            </label> 
            <label>Location:
              <input type="text"
                value={ location }
                onChange={this.update('location')}
                className="signup-input"
              />
            </label> 
            <label>About me:
              <input type="text"
                value={ about_me }
                onChange={this.update('about_me')}
                className="signup-input"
              />
            </label>
            <input type="submit" value="Submit"/>
            </div>
        </form>
      </div>
    );
  }

}


export default SignupForm; 