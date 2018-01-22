# Enchānt

[Enchant](https://enchants.herokuapp.com)

Enchant is a full-stack, single-page web application modeled after [Behance](https://www.behance.net/). It is built with a Ruby on Rails backend, a React.js/Redux frontend, and a PostgreSQL database. Media hosting is done through Amazon Web Services (S3) and application hosting is through Heroku.  

## Technologies 
- Backend 
  - Ruby on Rails 
  - jBuilder
  - PostgreSQL
  - Heroku 
- Frontend
  - Javascript
  - React/Redux
  - SCSS/CSS
  - Webpack 
- Storage 
  - Amazon Web Services - S3 

## Features and Implementation

### Project Index and Detail Views 

Users are able to view an index of project thumbnails which are individual react components. Upon clicking the thumbnail, a modal opens to show a scrolling view of high resolution images with a fixed sidebar displaying more details about the current project. Modal animations were created by overriding the default modal styling with css classes. 

![Project Show](https://github.com/TmNguyen12/Enchant/blob/master/app/assets/gifs/Enchant_demo.gif)


```javascript
return (
      <div>
        <div className="project-card">
          <img onClick={this.openModal} src={project.thumbnail_url} className="thumb pointer" />
          <div className="details"> 
            <div className="title">{project.title}</div>
            <div className="owners">
              <img id='card-user-icon'src={author.image} />
              <p className="author-card">{fname} {lname}</p>
            </div>
            <div className="category">
              <p>{project.category}</p>
              <i className="fa fa-bookmark" aria-hidden="true"></i>
            </div>
          </div>
        </div>
        <Modal
          isOpen={this.state.modalIsOpen}
          closeTimeoutMS={500}   
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          className={{
            base: 'view-modal',
            afterOpen:'view-modal-open', 
            beforeClose: 'view-modal-close'
          }}
          overlayClassName={{
            base: 'view-modal-overlay', 
            afterOpen:'view-modal-overlay-open',
            beforeClose: 'view-modal-overlay-close'  
          }}
         >
        <div className="modal">
            <ProjectShowContainer project={project}/> 
        </div>
      </Modal>
    </div>
    ); 
  }
}

```

### Dynamic Navigation Bar 
The navigation bar changed to show relevant actions to the user depending on whether they were signed in. Session props were passed to the navigation bar component to check for a logged in user. A different component would display depending on this information. 

```javascript
  notLoggedIn(){
    return (
      <ul className="nav-center-links">
        <li onClick={this.demoLogin}>Discover</li>
        <li>LinkIn</li>
        <li>GitHub</li>
        <button> <Link to="/signup">Sign Up With Email</Link></button>
      </ul>
    ); 
  }
  
  loggedIn(){
    return (
      <ul className="nav-center-links">
        <li><Link to="/"> Activity </Link></li>
        <li><Link to="/"> Discover </Link></li>
        <li><Link to="/"> Live </Link></li>
        <li><Link to="/"> Profile </Link></li>
        <button> <Link to="/project/create">Create a Project</Link></button>
      </ul>
    );
  }

  render() {
    return (
      this.props.currentUser ? this.loggedIn() : this.notLoggedIn() 
    ); 
  }
```

## Future Development  
- User Profiles 
  - Allow users to follow their favorite artists
- Tagging 
  - Allows for more dynamic/curated index pages 
- More media types for project upload 
  - Video, third party links, text 


