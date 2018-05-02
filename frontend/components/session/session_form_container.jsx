import { connect } from "react-redux";
import { Link, withRouter } from "react-router-dom";

import { login, logout, signup, clearErrors } from "../../actions/session_actions";
import SessionForm from "./session_form";

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.errors.session
});

const mapDispatchToProps = (dispatch, { location }) => {
  return {
    logout: () => dispatch(logout()),
    login: user => dispatch(login(user)),
    clearErrors: errors => dispatch(clearErrors(errors))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
