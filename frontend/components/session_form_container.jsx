import { connect } from 'react-redux';
import { Link, withRouter } from 'react-router-dom'; 


import { login, logout, signup } from '../actions/session_actions';
import SessionForm from './session_form';


const mapStateToProps = state => ({
    loggedIn: Boolean(state.session.currentUser),
    errors: state.errors.session
  }
);

const mapDispatchToProps = (dispatch, { location }) => {
  // const formType = location.pathname.slice(1);        // 
  // const splashForm= (formType === 'login') ? login : signup;
  return {
    // splashForm: user => dispatch(splashForm(user)),
    // formType
    logout: () => dispatch(logout()),
    login: user => dispatch(login(user))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
