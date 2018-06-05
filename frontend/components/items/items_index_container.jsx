import { connect } from 'react-redux';
import ItemsIndex from './items_index';
import { selectItems } from '../../reducers/selectors';
import { fetchAllItems, clearItems } from '../../actions/item_actions';
import { withRouter } from 'react-router';

const mapStateToProps = state => {
  return {
    items: state.entities.items.byId,
    itemIds: state.entities.items.allIds
  };
};

const mapDispatchToProps = dispatch => ({
  fetchAllItems: projectId => dispatch(fetchAllItems(projectId)),
  clearItems: () => dispatch(clearItems())
});

export default withRouter(
  connect(mapStateToProps, mapDispatchToProps)(ItemsIndex)
);
