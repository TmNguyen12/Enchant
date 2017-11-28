export const fetchAllItems = projectId => (
  $.ajax({
    method: 'GET', 
    url: `api/projects/${projectId}/items`
  })
);

export const createItem = (formData) => (
  $.ajax({
    method: 'POST', 
    url: `api/projects/${formData.project_id}/items`,
    dataType:"json", 
    contentType: false, 
    processData: false, 
    data: formData
  }) 
); 


