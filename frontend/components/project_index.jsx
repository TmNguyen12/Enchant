import React from 'react'; 
import { selectProjects } from '../reducers/selectors'; 
import ProjectIndexItem from './project_index_item'; 

class ProjectIndex extends React.Component {
  componentWillMount(){
    this.props.fetchProjects();  
  }

  
  render () {
    const { projects } = this.props; 
    console.log(projects); 

    if (Object.keys(projects).length < 1) {
      console.log("loading"); 
      return null; 
    } else {

 

      return (
        <section className="project-index">
          <ul className="project-list">
            {projects.map( proj => <ProjectIndexItem key={proj.id} project={proj}/>)}
          </ul>
        </section>
      ); 
    }
  }
}


export default ProjectIndex; 



     // const projectsArr = selectProjects(this.props.state); 
      // console.log(projectsArr); 
// {projectsArr.map( project => <ProjectIndexItem key={project.id} project={project}/>
// )}