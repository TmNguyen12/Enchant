import { connect } from 'react-redux';
import { logout, login } from '../actions/session_actions';
import NavCenter from './nav_center';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
  login: user => dispatch(login(user))    
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(NavCenter);
