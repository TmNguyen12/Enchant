import merge from 'lodash/merge'; 

import { LIKE_PROJECT, UNLIKE_PROJECT } from '../actions/like_actions'; 

 

const LikeReducer = (state = null, action) => {
  Object.freeze(state);
  // if (Object.keys(action.projects)) {
  //   let key = Object.keys(action.projects)[0]; 
  // }
  switch (action.type) {
    case LIKE_PROJECT:
      return merge ( {}, {likes: action.projects[(Object.keys(action.projects))[0]].likes}); 
      case UNLIKE_PROJECT:
      return merge ( {}, {likes: action.projects[(Object.keys(action.projects))[0]].likes}); 
    default:
      return state;
  }
};

export default LikeReducer; 

