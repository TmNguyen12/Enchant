import { connect } from 'react-redux'; 
import ProjectShow from './project_show'; 
import { fetchProject } from '../actions/project_actions'; 
import { selectProjects } from '../reducers/selectors'; 


const mapStateToProps = ( state ) => ({
  // project: selectProjects(state)
});

const mapDispatchToProps = dispatch => ({
  fetchProject: projectId => dispatch(fetchProject(projectId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectShow); 
