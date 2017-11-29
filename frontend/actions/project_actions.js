import * as ProjAPIUtil from '../util/project_api_util'; 

export const RECEIVE_ALL_PROJECTS = 'RECEIVE_ALL_PROJECTS'; 
export const RECEIVE_PROJECT = 'RECEIVE_PROJECT'; 
export const CREATE_PROJECT = 'CREATE_PROJECT'; 

export const receiveAllProjects = projects => ({
  type: RECEIVE_ALL_PROJECTS, 
  projects 
});

export const createProject = project => ({
  type: CREATE_PROJECT, 
  project 
});

export const receiveProject = project => ({
  type: RECEIVE_PROJECT, 
  project
});

export const makeProject = project => dispatch => {
  return (
    ProjAPIUtil.createProject(project)
      .then(project => dispatch(createProject(project)))
  ); 
}; 

export const fetchAllProjects = () => dispatch => {
  return (
    ProjAPIUtil.fetchAllProjects()
      .then(projects => dispatch(receiveAllProjects(projects)))
  ); 
}; 

export const fetchProject = id => dispatch => (
  ProjAPIUtil.fetchProject(id)
    .then( project => dispatch(receiveProject(project)))
); 