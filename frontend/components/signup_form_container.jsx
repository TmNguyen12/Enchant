import { connect } from 'react-redux';
import { Link, withRouter } from 'react-router-dom'; 

import { signup, clearErrors } from '../actions/session_actions';
import SignupForm from './signup_form'; 

const mapStateToProps = state => {
  return {
    errors: state.errors.session 
  }; 
};

const mapDispatchToProps = dispatch => {
  return {
    signup: user => dispatch(signup(user)), 
    clearErrors: errors => dispatch(clearErrors(errors))
    
  }; 
}; 

export default connect(
  mapStateToProps, 
  mapDispatchToProps
)(SignupForm); 

