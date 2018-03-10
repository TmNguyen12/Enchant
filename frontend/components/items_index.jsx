import React from "react";
import Modal from "react-modal";
import ItemIndexItem from "./item_index_item";

class ItemsIndex extends React.Component {
  componentWillMount() {
    this.props.fetchAllItems(this.props.projectId);
  }

  render() {
    const { items, itemIds } = this.props;

    if (Object.keys(items).length < 1) {
      return null;
    } else {
      return (
        <section className="item-index">
          <ul className="item-list">
            {itemIds.map(item => (
              <ItemIndexItem key={items[item].id} item={items[item]} />
            ))}
          </ul>
        </section>
      );
    }
  }
}

export default ItemsIndex;
