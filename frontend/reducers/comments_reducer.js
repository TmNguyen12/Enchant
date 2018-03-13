import merge from "lodash/merge";

import {
  RECEIVE_ALL_COMMENTS,
  CREATE_COMMENT,
  RECEIVE_NO_COMMENTS
} from "../actions/comment_actions";

const defaultState = {
  byId: {},
  allIds: []
};

const commentsReducer = (state = defaultState, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ALL_COMMENTS:
      const m = merge({}, state, action.comments);
      return merge({}, state, action.comments);
    case CREATE_COMMENT:
      return merge({}, state, action.comments);
    case RECEIVE_NO_COMMENTS:
      return {};
    default:
      return state;
  }
};

export default commentsReducer;
