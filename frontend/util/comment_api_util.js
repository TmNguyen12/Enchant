export const fetchAllComments = projectId =>
  $.ajax({
    method: "GET",
    url: `api/projects/${projectId}/comments`
  });

// I don't need a single comment

export const createComment = (projectId, comment) =>
  $.ajax({
    method: "POST",
    url: `api/projects/${projectId}/comments`,
    data: { comment }
  });
