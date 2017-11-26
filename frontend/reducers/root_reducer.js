import { combineReducers } from 'redux';

import sessionReducer from './session_reducer';
import errors from './errors_reducer';
import entities from './entities_reducer'; 

const rootReducer = combineReducers({
  session: sessionReducer, 
  errors, 
  entities 
});

export default rootReducer;
