import React from 'react'; 
import { selectProjects } from '../reducers/selectors'; 
import ProjectIndexItem from './project_index_item'; 
import ProjectShow from './project_show_container'; 

class ProjectIndex extends React.Component {
  componentWillMount(){
    this.props.fetchProjects();  
  }

  
  render () {
    const { projects } = this.props; 

    if (Object.keys(projects).length < 1) {
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