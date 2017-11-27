import * as ItemAPIUtil from '../util/item_api_util'; 

export const RECEIVE_ALL_ITEMS = 'RECEIVE_ALL_ITEMS'; 

export const receiveAllItems = items => ({
  type: RECEIVE_ALL_ITEMS, 
  items 
});

export const fetchAllItems = projectId => dispatch => {
  return (
    ItemAPIUtil.fetchAllItems(projectId)
      .then(items => dispatch(receiveAllItems(items)))
  ); 
}; 

