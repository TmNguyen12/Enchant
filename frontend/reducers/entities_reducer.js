import { combineReducers } from "redux";
import projects from "./project_reducer";
import items from "./item_reducer";
import likes from "./like_reducer";
import comments from "./comments_reducer";

export default combineReducers({
  projects,
  items,
  likes,
  comments
});
