import * as LikeAPIUtil from '../util/like_api_util'; 
import { receiveProject } from '../actions/project_actions'; 
import { log } from 'util';
export const LIKE_PROJECT = "LIKE_PROJECT"; 
export const UNLIKE_PROJECT = "UNLIKE_PROJECT"; 

export const likeProject = project => ({
  type: LIKE_PROJECT, 
  projects
});

export const unlikeProject = project => ({
  type: UNLIKE_PROJECT, 
  projects
});

export const makeLike = project => dispatch => {
  return (
    LikeAPIUtil.createLike(project).then(project1 => {
          dispatch(receiveProject(project1));
        }
      )
    );  
};

export const unLike = project => dispatch => {
  return (
    LikeAPIUtil.unLike(project).then(project => {
        dispatch(receiveProject(project));
      }
    )
  ); 
};

