import React from 'react'; 
import Modal from 'react-modal'; 
import ItemsIndexContainer from './items_index_container'; 

class ProjectShow extends React.Component {

  // componentWillMount(){
  //   debugger 
  //   this.props.fetchProject(this.props.project)
  // }



  render() {

    const { project } = this.props; 
    console.log("project show", this.props)
    
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
            <button>Appreciate Project</button>
          </div>
        </div>

        <div className="items-index">
          <ItemsIndexContainer projectId={project.id}/> 
        </div>
      </div>

    ); 
  }
}

export default ProjectShow; 