import { connect } from 'react-redux'; 
import ProjectEdit from './project_edit'; 
import { editProject, receiveProject, fetchProject } from '../actions/project_actions'; 
import { withRouter } from 'react-router'; 
import { selectProjects } from '../reducers/selectors'; 

// const defaultstate = {
//     title:' ', 
//     description:'', 
//     category: '', 
//     author_id: ''
// }; 

const mapStateToProps = ( state ) => ({
  currentUser: state.session.currentUser, 
  // project
  project: selectProjects(state)
});

const mapDispatchToProps = dispatch => ({
  editProject: projectId => dispatch(editProject(projectId)), 
  fetchProject: projectId => dispatch(fetchProject(projectId))
});

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectEdit)); 
