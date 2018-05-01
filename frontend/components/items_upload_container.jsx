import { connect } from 'react-redux';
import ItemsUpload from './items_upload';
import { selectItems } from '../reducers/selectors';
import { makeItem } from '../actions/item_actions';
import { withRouter } from 'react-router';

// const defaultState = {
//   items: {},
//   itemIds: []
// };

const defaultItem = {
  text: '',
  imageFile: '',
  imageUrl: ''
};

const mapStateToProps = state => {
  return {
    item: state.entities.items
    // items: selectItems(state),
    // itemIds: state.entities.items.allIds
  };
};

const mapDispatchToProps = dispatch => ({
  makeItem: (item, projectId) => dispatch(makeItem(item, projectId))
});

export default withRouter(
  connect(mapStateToProps, mapDispatchToProps)(ItemsUpload)
);
