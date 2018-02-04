import { connect } from 'react-redux'; 
import ProjectEdit from './project_edit'; 
import { updateProject, receiveProject, fetchProject } from '../actions/project_actions'; 
import { withRouter } from 'react-router'; 
import { selectProjects } from '../reducers/selectors'; 
import { fetchAllItems } from '../actions/item_actions'; 


// const defaultstate = {
//     title:' ', 
//     description:'', 
//     category: '', 
//     author_id: ''
// }; 

const mapStateToProps = ( state ) => {
  debugger 
  return (
    {
      currentUser: state.session.currentUser, 
      thumbnail: state.entities.items.image_url, 
      project: state.entities.projects.viewProject 
    }
  ); 
};

const mapDispatchToProps = dispatch => ({
  updateProject: projectId => dispatch(updateProject(projectId)), 
  fetchProject: projectId => dispatch(fetchProject(projectId)),
  fetchAllItems: projectId => dispatch(fetchAllItems(projectId))

});

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectEdit)); 
