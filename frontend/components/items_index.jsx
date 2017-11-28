import React from 'react'; 
import Modal from 'react-modal'; 
import ItemIndexItem from './item_index_item'; 

class ItemsIndex extends React.Component {

  componentWillMount(){
    this.props.fetchAllItems(this.props.projectId);  
  }


  render () {
    const { items } = this.props; 

    if (Object.keys(items).length < 1 ) {
      console.log("loading"); 
      return null; 
    } else {

      return (
        <section className="item-index">
        <ul className="item-list">
          {items.map( item => <ItemIndexItem key={item.id} item={item}/>)}
        </ul>
      </section>
      ); 
    }
  }
}



export default ItemsIndex; 