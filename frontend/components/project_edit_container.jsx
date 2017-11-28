import { connect } from 'react-redux'; 
import ProjectEdit from './project_edit'; 
import { editProject, receiveProject } from '../actions/project_actions'; 
import { withRouter } from 'react-router'; 

// const defaultstate = {
//     title:' ', 
//     description:'', 
//     category: '', 
//     author_id: ''
// }; 

const mapStateToProps = ( {session}, {project} ) => ({
  currentUser: session.currentUser, 
  project
  // project: selectProjects(state)
});

const mapDispatchToProps = dispatch => ({
  editProject: projectId => dispatch(editProject(projectId)), 
  receiveProject: projectId => dispatch(receiveProject(projectId))
});

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectEdit)); 
