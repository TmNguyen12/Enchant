
import React from 'react'; 

class CommentsForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this); 
    this.state = {
      body: ""
    }; 
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
    this.props.fetchMakeComment(this.props.projectId, comment)
      .then( () => this.setState({body: ""})); 
      this.textInput.value = ""; 
      this.textInput.blur(); 
  }
  
  render (){
    const { currentUser } = this.props;
    return(
      <form className="comments-form-form" onSubmit={this.handleSubmit}>
        <h1 className="comment-header">Comments</h1>
        <div className="comment-form-mid">
          <img id="comment-user-icon" src={currentUser.image}/>
          <textarea id="comment" 
            onChange={this.update("body")} 
            name="comment"  
            cols="60" 
            rows="10" 
            className="comment-textarea"
            ref={ input => { this.textInput = input; }}
            >
          </textarea>
        </div>
        <div className="comment-button-div">
          <button className="comment-button">Post a Comment</button>
        </div>
      </form>
    ); 
  }

}
export default CommentsForm; 