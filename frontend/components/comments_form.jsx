
import React from 'react'; 

class CommentsForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this); 
    
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e){
    e.preventDefault();
    this.state.user_id = this.props.currentUser.id; 
    const comment = this.state; 
    this.props.fetchMakeComment(this.props.projectId, comment); 
  }

  render (){
    const { currentUser } = this.props;
    return(
      <form className="comments-form-form" onSubmit={this.handleSubmit}>
        <div className="comment-header">Comments</div>
        <div className="comment-body"></div>
          <img id="user-icon" src={currentUser.image.url}/>
          <textarea onChange={this.update("body")}name="comment" id="comment" cols="60" rows="10" className="comment-textarea">
          </textarea>
          <button className="comment-button">Post a Comment</button>
      </form>


    ); 
  }


}
export default CommentsForm; 