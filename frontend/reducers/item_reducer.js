import merge from 'lodash/merge'; 

import { RECEIVE_ALL_ITEMS } from '../actions/item_actions'; 

const defaultState = {
  byId: {}, 
  allIds: []
}; 

const itemReducer = (state = defaultState, action ) => {
  Object.freeze(state); 

  switch (action.type) {
    case RECEIVE_ALL_ITEMS:
      console.log(action.items);
      return merge( {}, action.items ) ; 
     default:
      return state;
  }
};

export default itemReducer; 

