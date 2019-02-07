import React from 'react';
import { Link } from 'react-router-dom';
import ProjectIndex from '../project/project_index_container'; 
import SplashContainer from '../splash/splash_container'; 


const MainComponent = ({ currentUser }) => (
  currentUser ? <ProjectIndex /> : <SplashContainer />
);
// testing if this works
export default MainComponent; 