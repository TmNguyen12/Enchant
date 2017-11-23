import {
  RECEIVE_SESSION_ERRORS,
  RECEIVE_CURRENT_USER,
} from '../actions/session_actions';

const _nullErrors = Object.freeze({
  errors: null
});

export default (state = [], action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_SESSION_ERRORS:
      // if (action.errors === undefined) {
      //   action.errors = []; 
      // } 
      console.log(action.errors);
      return action.errors;
    case RECEIVE_CURRENT_USER:
      return [];
    default:
      return state;
  }
};

