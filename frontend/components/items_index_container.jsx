import { connect } from 'react-redux'; 
import ItemsIndex from './items_index'; 
import { selectItems } from '../reducers/selectors'; 
import { fetchAllItems } from '../actions/item_actions'; 

const mapStateToProps = ( state ) => { 
  return(
    {
      items: selectItems(state),
      itemIds: state.entities.items.allIds
    }
  ); 
};

const mapDispatchToProps = dispatch => ({
  fetchAllItems: projectId => dispatch(fetchAllItems(projectId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ItemsIndex);

