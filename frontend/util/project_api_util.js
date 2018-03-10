export const fetchAllProjects = () =>
  $.ajax({
    method: "GET",
    url: "api/projects"
  });

export const fetchProject = id =>
  $.ajax({
    method: "GET",
    url: `api/projects/${id}`
  });

export const editProject = project =>
  $.ajax({
    method: "PATCH",
    url: `api/projects/${project.id}`,
    data: { project }
  });

export const createProject = project => {
  return $.ajax({
    method: "POST",
    url: `api/projects`,
    data: { project }
  });
};

export const pullProjectIdFromURL = URL => {
  let myRegex = /[^\/]+$/g;
  let projectID = parseInt(myRegex.exec(URL));
  return projectID;
};
