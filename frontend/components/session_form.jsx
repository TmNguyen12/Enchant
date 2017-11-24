import React from 'react'; 
import { Link, withRouter } from 'react-router-dom'; 
import Modal from 'react-modal'; 

class SessionForm extends React.Component {
  constructor (props) {
    super(props);
    this.state ={
      username: "", 
      password: "", 
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
       <Modal
          isOpen={this.state.modalIsOpen}
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          // style={customStyles}
          // contentLabel="Example Modal"
          className="session-modal"
          overlayClassName="session-modal-overlay"
        >
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <div className="login-form">
              {this.renderErrors()}
              <br/>
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

              {/* <Link to="/signup" > Sign up here</Link>  */}

                {/* <button type="submit" value="Demo Login"> Demo login </button> */}
              
            </div>
          </form>
        </Modal>
      </div>

    );
  }

}

export default withRouter(SessionForm); 