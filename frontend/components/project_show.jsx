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

  handleLike(){
    const { liked_by_current_user } = this.props.project; 
    if (liked_by_current_user === true) {
      this.props.unLike(this.props.project); 
    } else {
      this.props.makeLike(this.props.project); 
    } 
  }

  render() {
    const { project } = this.props; 
    console.log("project show", this.props); 

    const likeButton = this.props.project.liked_by_current_user ? "Thank you!" : "Appreciate Project";  

    if (!project) {
      return null;
    }
    return (
      <div className="project-show">
       
          <div className="sidebar">
            <div className="sidebar-user-info">
              <div className="name-follow">
                <h2>{project.author_id}</h2>
                <button className="follow-button">Follow</button>
              </div>
              <div className="author-icon"> Author Icon </div>
            </div>
            
            <div className="sidebar-project-info">
              <h2>{project.title}</h2>
              <h4>{project.category}</h4>
              <div className="stats"> Likes and comments</div>
              <div className="publish-date">{project.created_at.toString()} </div> 
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