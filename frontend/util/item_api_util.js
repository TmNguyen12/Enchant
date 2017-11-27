export const fetchAllItems = projectId => (
  $.ajax({
    method: 'GET', 
    url: `api/projects/${projectId}/items`
  })
);

