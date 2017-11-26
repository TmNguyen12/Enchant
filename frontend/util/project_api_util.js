export const fetchAllProjects = () => (
  $.ajax({
    method: 'GET', 
    url: 'api/projects'
  })
);

export const fetchProject = id => (
  $.ajax({
    method: 'GET', 
    url:`api/projects/${id}`
  })
);

export const editProject = id => (
  $.ajax({
    method: 'PATCH', 
    url:`api/projects/${id}`
  })
);

