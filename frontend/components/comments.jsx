import React from "react";
import CommentsForm from "./comments_form";
import CommentsIndex from "./comments_index";

class Comments extends React.Component {
  constructor(props) {
    super(props);
    this.state = { comments: {} };
  }

  componentDidMount() {
    this.props.fetchComments(this.props.currentProject);
  }

  // componentWillReceiveProps() {
  //   this.props.fetchComments(this.props.projectId);
  // }

  // checkComments() {
  //   if (
  //     comments[Object.keys(comments)[0]].project_id !== this.props.projectId
  //   ) {
  //     this.setState({ comments: {} });
  //   }
  // }

  componentWillUnmount() {
    this.props.clearComments();
  }

  render() {
    const { comments, commentIds, currentUser } = this.props;
    if (!comments) {
      return null;
    }
    return (
      <div className="comments-wrapper">
        <div className="comments-form">
          <CommentsForm
            projectId={this.props.projectId}
            currentUser={currentUser}
            fetchMakeComment={this.props.fetchMakeComment}
          />
        </div>

        <div className="comments-index-wrapper">
          <CommentsIndex
            projectId={this.props.projectId}
            comments={comments}
            commentIds={commentIds}
          />
        </div>
      </div>
    );
  }
}

export default Comments;
