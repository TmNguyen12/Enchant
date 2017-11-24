import React from 'react'; 
import { Link, withRouter } from 'react-router-dom'; 
import Modal from 'react-modal'; 


class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '', 
      password: '', 
      location: '', 
      about_me: '', 
      modalIsOpen: false      
    }; 
    this.handleSubmit = this.handleSubmit.bind(this); 
    this.openModal = this.openModal.bind(this);
    this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

   // default modal syntax from https://github.com/reactjs/react-modal
  openModal() {
    this.setState({modalIsOpen: true});
  }

  afterOpenModal() {
    // references are now sync'd and can be accessed.
    // this.subtitle.style.color = '#f00';
  }

  closeModal() {
    let oldLoc = this.props.history.goBack(); 
    this.setState({modalIsOpen: false});
  }

  componentWillMount(){
    this.openModal(); 
  }

  componentWillUnmount(){
    this.props.clearErrors([]); 
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
        <Modal
          isOpen={this.state.modalIsOpen}
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          // style={customStyles}
          // contentLabel="Example Modal"
          className="session-modal"
          overlayClassName="session-modal-overlay"
        >
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
        </Modal>
      </div>
    );
  }

}


export default SignupForm; 