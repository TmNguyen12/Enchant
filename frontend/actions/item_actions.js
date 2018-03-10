import * as ItemAPIUtil from "../util/item_api_util";

export const RECEIVE_ALL_ITEMS = "RECEIVE_ALL_ITEMS";
export const CREATE_ITEM = "CREATE_ITEM";

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

export const makeItem = item => dispatch => {
  return ItemAPIUtil.createItem(item).then(item => dispatch(createItem(item)));
};

export const fetchAllItems = projectId => dispatch => {
  return ItemAPIUtil.fetchAllItems(projectId).then(items =>
    dispatch(receiveAllItems(items))
  );
};
