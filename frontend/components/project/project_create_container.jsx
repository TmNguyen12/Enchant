import { connect } from "react-redux";
import ProjectCreate from "./project_create";
import { makeProject } from "../../actions/project_actions";

// const defaultstate = {
//     title:' ',
//     description:'',
//     category: '',
//     author_id: ''
// };

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
  // project: selectProjects(state)
});

const mapDispatchToProps = dispatch => ({
  createProject: project => dispatch(makeProject(project))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectCreate);
