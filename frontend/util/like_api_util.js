export const createLike = like => {
  return (
    $.ajax({
      method: 'POST', 
      url: `api/projects/${like.project_id}/likes`,
      data: { like } 
    })
  ); 
}; 
