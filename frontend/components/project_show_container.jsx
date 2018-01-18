import { connect } from 'react-redux'; 
import ProjectShow from './project_show'; 
import { fetchProject } from '../actions/project_actions'; 
import { selectProjects } from '../reducers/selectors'; 
import { makeLike, unLike } from '../actions/like_actions'; 

const mapStateToProps = ( state ) => { 
  return (
    {
      commentCount: Object.keys(state.entities.comments.byId).length
    // state
    // project: selectProjects(state)
    }
  ); 
};

const mapDispatchToProps = dispatch => ({
  fetchProject: project => dispatch(fetchProject(project)),
  makeLike: project => dispatch(makeLike(project)),
  unLike: project => dispatch(unLike(project))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectShow); 

