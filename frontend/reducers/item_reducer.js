import merge from 'lodash/merge'; 

import { RECEIVE_ALL_ITEMS, CREATE_ITEM } from '../actions/item_actions'; 

const defaultState = {
  byId: {}, 
  allIds: []
}; 

const itemReducer = (state = defaultState, action ) => {
  Object.freeze(state); 

  switch (action.type) {
    case RECEIVE_ALL_ITEMS:
      return merge( {}, action.items ) ; 
    case CREATE_ITEM:
      return merge ( {}, action.item); 
    default:
      return state;
  }
};

export default itemReducer; 

