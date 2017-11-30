import React from 'react'; 

class CommentsIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }


  render(){
    const { comment } = this.props; 
    return(
      <div className="comments-index-itemwrap">
        <div className="user-icon"> </div>
        <div className="comment-main-body">
          <div className="author-name">   </div>
          <div className="comment-body">  </div>
        </div>
      </div>
    ); 
  }


}

export default CommentsIndexItem;

