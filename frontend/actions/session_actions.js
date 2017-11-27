import * as APIUtil from '../util/session_api_util'

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveErrors = errors => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
});

export const clearErrors = errors => dispatch => (
  dispatch(receiveErrors(errors))
);

export const signup = user => dispatch => {
 return (
   APIUtil.signup(user).then(user => (
     dispatch(receiveCurrentUser(user))
   ), err => (dispatch(receiveErrors(err.responseJSON))
   ))

 )
};

export const login = user => dispatch => (
  APIUtil.login(user).then(user => (
    dispatch(receiveCurrentUser(user))
  ), err =>{
    console.log(err); 
    return dispatch(receiveErrors(err.responseJSON)); 
  } 
  ));

export const logout = () => dispatch => (
  APIUtil.logout().then(user => (
    dispatch(receiveCurrentUser(null))
  ))
);

