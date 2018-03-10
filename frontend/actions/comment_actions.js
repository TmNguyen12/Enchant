import * as CommentAPIUtil from "../util/comment_api_util";

export const RECEIVE_ALL_COMMENTS = "RECEIVE_ALL_COMMENTS";
export const CREATE_COMMENT = "CREATE_COMMENT";

export const receiveAllComments = comments => ({
  type: RECEIVE_ALL_COMMENTS,
  comments
});

export const makeComment = comments => ({
  type: CREATE_COMMENT,
  comments
});

export const fetchMakeComment = (projectId, comment) => dispatch => {
  return CommentAPIUtil.createComment(projectId, comment).then(comment =>
    dispatch(makeComment(comment))
  );
};

export const fetchComments = projectId => dispatch => {
  return CommentAPIUtil.fetchAllComments(projectId).then(comments =>
    dispatch(receiveAllComments(comments))
  );
};
