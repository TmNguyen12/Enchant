import { connect } from "react-redux";
import ProjectIndex from "./project_index";
// import { fetchIndex, fetchProject } from '../util/project_api_util';
import { fetchAllProjects } from "../actions/project_actions";
import { selectProjects } from "../reducers/selectors";

const mapStateToProps = state => ({
  projects: selectProjects(state)
});

const mapDispatchToProps = dispatch => ({
  fetchProjects: () => dispatch(fetchAllProjects())
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectIndex);
