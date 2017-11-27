import React from 'react';
import { Link } from 'react-router-dom';
import ProjectIndex from './project_index_container'; 
import SplashContainer from './splash_container'; 


const MainComponent = ({ currentUser }) => (
  currentUser ? <ProjectIndex /> : <SplashContainer />
);

export default MainComponent; 