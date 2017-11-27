import { combineReducers } from 'redux';
import projects from './project_reducer'; 
import items from './item_reducer'; 

export default combineReducers({
  projects, 
  items
});

