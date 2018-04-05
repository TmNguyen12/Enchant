import React from 'react';
import { fetchProject } from '../frontend/actions/project_actions';
import { receiveCurrentUser } from '../frontend/actions/session_actions';
import configureMockStore from 'redux-mock-store';
import thunk from 'redux-thunk';
import * as actions from '../frontend/actions/session_actions';
import * as APIUtil from '../frontend/util/session_api_util';

const middlewares = [thunk];
// const mockStore = configureMockStore(middlewares);

let testUser = {
  currentUser: {
    about_me: null,
    fname: 'Felurian',
    id: 5,
    username: 'Felurian',
    img_url:
      'https://s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Felurian.jpg'
  }
};

describe('actions', () => {
  test('receiveCurrentUser should create an action to receive users', () => {
    const expectedAction = {
      type: actions.RECEIVE_CURRENT_USER,
      currentUser: testUser
    };

    expect(actions.receiveCurrentUser(testUser)).toEqual(expectedAction);
  });
});
