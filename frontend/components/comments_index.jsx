import React from 'react'; 
import CommentsIndexItem from './comments_index_item'; 

class CommentsIndex extends React.Component {
  constructor(props){
    super(props); 
  }

  // componentWillMount(){
  //   this.props.fetchComments(this.props.projectId);
  // }

  render (){
    const { comments,commentIds } = this.props; 

    if (commentIds.length < 1) {
      return null; 
    } 

    return(
      <div className="comments-index">
        <ul className="comments-list">
          { commentIds.map( cId => <CommentsIndexItem key={cId} comment={comments[cId]} projectId={comments[cId].project_id}/>)}
        </ul>
      </div>
    ); 
  }
  // }
}

export default CommentsIndex; 