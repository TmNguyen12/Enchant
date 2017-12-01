import merge from 'lodash/merge'; 

import { 
  RECEIVE_ALL_PROJECTS, 
  RECEIVE_PROJECT,
  CREATE_PROJECT
} from '../actions/project_actions'; 


const projectReducer = (state = {}, action ) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_PROJECTS:
      return merge ({}, action.projects); 
    case RECEIVE_PROJECT:
      console.log("receive-project",action.projects);
      return merge({}, state, action.projects); 
    case CREATE_PROJECT:
      return merge({}, action.project);   
    default:
      return state; 
  }
};

export default projectReducer; 

