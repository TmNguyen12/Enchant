import { connect } from 'react-redux';
import ProjectShow from './project_show';
import { fetchProject, clearProject } from '../../actions/project_actions';
import { selectProjects } from '../../reducers/selectors';
import { makeLike, unLike } from '../../actions/like_actions';
import { withRouter } from 'react-router';

const mapStateToProps = state => {
  return {
    commentCount: Object.keys(state.entities.comments.byId).length,
    viewProject: state.entities.projects.viewProject
  };
};

const mapDispatchToProps = dispatch => ({
  fetchProject: project => dispatch(fetchProject(project)),
  makeLike: project => dispatch(makeLike(project)),
  unLike: project => dispatch(unLike(project)),
  clearProject: () => dispatch(clearProject())
});

export default withRouter(
  connect(mapStateToProps, mapDispatchToProps)(ProjectShow)
);
