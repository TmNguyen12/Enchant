import * as ItemAPIUtil from '../util/item_api_util';

export const RECEIVE_ALL_ITEMS = 'RECEIVE_ALL_ITEMS';
export const CREATE_ITEM = 'CREATE_ITEM';
export const RECEIVE_NO_ITEMS = 'RECEIVE_NO_ITEMS';

export const receiveAllItems = items => ({
  type: RECEIVE_ALL_ITEMS,
  items
});

export const createItem = item => {
  return {
    type: CREATE_ITEM,
    item
  };
};

const receiveNoItems = () => ({
  type: RECEIVE_NO_ITEMS
});

export const makeItem = (item, projectId) => dispatch => {
  return ItemAPIUtil.createItem(item, projectId).then(newItem =>
    dispatch(createItem(newItem))
  );
};

export const fetchAllItems = projectId => dispatch => {
  return ItemAPIUtil.fetchAllItems(projectId).then(items =>
    dispatch(receiveAllItems(items))
  );
};

export const clearItems = () => dispatch => dispatch(receiveNoItems());
