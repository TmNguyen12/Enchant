import merge from 'lodash/merge'; 

import { LIKE_PROJECT, UNLIKE_PROJECT } from '../actions/like_actions'; 

 

const LikeReducer = (state = null, action) => {
  Object.freeze(state);

  switch (action.type) {
    case LIKE_PROJECT:
      return merge ( {}, {[action.projects.id]: action.projects}); 
    case UNLIKE_PROJECT:
      return merge ( {}, {[action.projects.id]: action.projects}); 
    default:
      return state;
  }
};

export default LikeReducer; 

