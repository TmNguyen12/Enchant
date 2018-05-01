export const fetchAllItems = projectId =>
  $.ajax({
    method: 'GET',
    url: `api/projects/${projectId}/items`
  });

export const createItem = (item, projectId) => {
  return $.ajax({
    method: 'POST',
    url: `api/projects/${projectId}/items`,
    contentType: false,
    processData: false,
    data: item
  });
};
