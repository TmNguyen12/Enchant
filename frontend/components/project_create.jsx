import React from 'react'; 


class ProjectCreate extends React.Component {
  constructor(){
    super(); 
    this.state = {
    title:' ', 
    description:'', 
    category: '', 
    author_id: ''
    }; 
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const project = Object.assign({}, this.state);
    // this.props.login(user); 
  }

  render() {


    return(
      <div className="create-project-page">
        <form className="project-info-form">
          <label>Project Title:
                  <input type="text"
                    value={ this.state.title }
                    onChange={this.update('title')}
                    className="project-input"
                  />
          </label>
          <label>Description:
                  <input type="text"
                    value={ this.state.description }
                    onChange={this.update('description')}
                    className="project-input"
                  />
          </label>
          <label>Category:
                  <input type="text"
                    value={ this.state.category }
                    onChange={this.update('category')}
                    className="project-input"
                  />
          </label>
        </form>

        <div className="items-input">

        </div>
        <button onClick={this.hanldeSubmit}>Create Project</button>
      </div>


    ); 
  }

}

export default ProjectCreate; 