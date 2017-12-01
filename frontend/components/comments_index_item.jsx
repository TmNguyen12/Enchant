import React from 'react'; 

class CommentsIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }


  render(){
    const { comment } = this.props; 

    const fname = (comment.user.fname) ? comment.user.fname : comment.user.username; 
    const lname = (comment.user.lname) ? comment.user.lname : ""; 
    return(
      <div className="comments-index-itemwrap">
        <img src={this.props.comment.user.image} id="comment-user-icon"/>
        <div className="comment-main-body">
          <div className="author-name">{fname} {lname} </div>
          <div className="comment-body">{comment.body} </div>
        </div>
      </div>
    ); 
  }
}

export default CommentsIndexItem;