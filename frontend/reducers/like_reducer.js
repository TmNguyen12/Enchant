import merge from 'lodash/merge'; 

import { LIKE_PROJECT, UNLIKE_PROJECT } from '../actions/like_actions'; 

 

const LikeReducer = (state = null, action) => {
  Object.freeze(state);

  switch (action.type) {
    case LIKE_PROJECT:
    debugger
      return merge ( {}, action.project); 
    case UNLIKE_PROJECT:
      return merge ( {}, action.project); 
    default:
      return state;
  }
};

export default LikeReducer; 

