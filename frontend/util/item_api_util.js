export const fetchAllItems = projectId => (
  $.ajax({
    method: 'GET', 
    url: `api/projects/${projectId}/items`
  })
);

export const createItem = (item) => {
  
  return $.ajax({
    method: 'POST', 
    url: `api/projects/${item.project_id}/items`,
    contentType: false, 
    processData: false, 
    data: item
  });  
}; 


