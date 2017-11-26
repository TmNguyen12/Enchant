import { connect } from 'react-redux'; 
import ProjectIndex from './project_index'; 
import { fetchIndex, fetchProject } from '../util/project_api_util'; 

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
  login: user => dispatch(login(user))  
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectIndex); 
