
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
    const user = this.state; 
    this.props.signup({user}); 
    this.closeModal(); 
  }

  render (){

    return(
      <form className="comments-form-form" onSubmit={this.handleSubmit}>
        <div className="comment-header">Comments</div>
        <div className="comment-body"></div>
          <div className="user-icon">User Icon</div>
          <textarea name="comment" id="comment" cols="60" rows="10" className="comment-textarea">
          </textarea>
          <button className="comment-button">Post a Comment</button>
      </form>


    ); 
  }


}
export default CommentsForm; 