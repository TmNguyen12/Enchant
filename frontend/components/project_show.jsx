import React from 'react'; 
import Modal from 'react-modal'; 
import ItemsIndexContainer from './items_index_container'; 
import CommentsContainer from './comments_container'; 

class ProjectShow extends React.Component {
  constructor(props){
    super(props);
    // this.state = {liked_by_current_user: this.props.project.liked_by_current_user};
    // this.state.project = this.props.project; 
    this.handleLike = this.handleLike.bind(this); 
  }

  componentWillMount(){
    this.props.fetchProject(this.props.project.id); 
  }

  componentWillReceiveProps(newProps){
    this.setState({projects: newProps}); 
  }

  // component will umount and clear state 

  handleLike(){
    const { liked_by_current_user } = this.props.project; 
    if (liked_by_current_user === true) {
      this.props.unLike(this.props.project); 
    } else {
      this.props.makeLike(this.props.project); 
    } 
  }

  render() {
    // debugger
    console.log("this.props", this.props); 
    const { project } = this.props; 
    const { author } = this.props.project; 
    const likeButton = this.props.project.liked_by_current_user ? "Thank you!" : "Appreciate Project";  
    const fname = (author.fname) ? author.fname : author.username; 
    const lname = (author.lname) ? author.lname : ""; 

    if (!project) {
      return null;
    }
    return (
      <div className="project-show">
          <div className="sidebar">
            <div className="sidebar-user-info">
              <div className="name-follow">
                <h2>{fname} {lname}r</h2>
                <button className="follow-button">Follow</button>
              </div>
              <img id='comment-user-icon'src={author.image} />
            </div>
            <div className="sidebar-project-info">
              <h2>{project.title}</h2>
              <h4>{project.category}</h4>
              <div className="stats"> Likes and comments</div>
              <div className="publish-date">Published: {project.created_at}</div> 
            </div>
            <div className="sidebar-misc-links">
              <button onClick={this.handleLike}>{likeButton}</button>
            </div>
          </div>
        <div className="items-index">
          <ItemsIndexContainer projectId={project.id}/> 
          <div className="comments">
            <CommentsContainer projectId={project.id}/>
          </div>
        </div>
      </div>
    ); 
  }
}

export default ProjectShow; 