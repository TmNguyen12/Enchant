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

  componentWillUnmount(){
    this.props.clearErrors([]); 
  }

  update(field) {
    console.log(field);
    console.log(this.state);
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e){
    e.preventDefault();
    console.log(this.state);
    const user = this.state; 
    this.props.signup({user}); 
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

  render () {
    const { username, about_me, password, location } = this.state; 
    return (
      <div className="signup-form-container">
        <form className="signup-form-box" onSubmit={this.handleSubmit}>
        {this.renderErrors()}

          <div className="signup-form">
            <label>Username:
              <input type="text"
                value={ this.state.username }
                onChange={this.update('username')}
                className="signup-input"
              />
            </label>
            <label>Password:
              <input type="text"
                value={ this.state.password }
                onChange={this.update('password')}
                className="signup-input"
              />
            </label> 
            <label>Location:
              <input type="text"
                value={ this.state.location }
                onChange={this.update('location')}
                className="signup-input"
              />
            </label> 
            <label>About me:
              <input type="text"
                value={ this.state.about_me }
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