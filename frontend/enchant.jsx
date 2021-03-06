import React from 'react';
import ReactDOM from 'react-dom';

import Root from './components/root';
import configureStore from './store/store';
// import * as APIUtil from './util/session_api_util';
// import * as ProjAPIUtil from './util/project_api_util';
// import * as ItemAPIUtil from './util/item_api_util';
// import { selectProjects } from './reducers/selectors';
// import { fetchLike, fetchUnLike } from './actions/like_actions';
// import {
//   fetchMakeComment,
//   fetchComments,
//   clearComments
// } from './actions/comment_actions';
// import { fetchProject } from './actions/project_actions';

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  // const project6 = {
  //   title: 'SuperDuper',
  //   description: ' forever',
  //   category: 'Photography'
  // };

  // window.clearComment = clearComments;
  // window.store = store;
  // window.getState = store.getState;
  // window.dispatch = store.dispatch;

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
