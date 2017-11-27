import React from 'react'; 

const ProjectIndexItem = ({project}) => {

    return (
      <div className="project-card">
        <img src={project.thumbnail_url} className="thumb" onClick={this.handleShow}/>
        <div className="details"> 
          <div className="title">{project.title}</div>
          <div className="owners">{project.id}</div>
          <div className="category">{project.category}</div>
          <div className="stats"> Likes and comments</div>
        </div>
      </div>
    ); 
}; 


export default ProjectIndexItem; 
