import { connect } from 'react-redux';
import { withRouter } from 'react-router';

import Comments from '../comments/comments';
import CommentsForm from '../comments/comments_form';
import CommentsIndex from './comments_index';
import {
  fetchMakeComment,
  fetchComments,
  clearComments
} from '../../actions/comment_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  comments: state.entities.comments.byId,
  commentIds: state.entities.comments.allIds,
  currentProject: state.entities.projects.viewProject.id
});

const mapDispatchToProps = dispatch => ({
  fetchMakeComment: (projectId, comment) =>
    dispatch(fetchMakeComment(projectId, comment)),
  fetchComments: projectId => dispatch(fetchComments(projectId)),
  clearComments: () => dispatch(clearComments())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Comments));
