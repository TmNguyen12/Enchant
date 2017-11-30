export const createLike = project => {
  return (
    $.ajax({
      method: 'POST', 
      url: `api/likes`,
      data: { project }
    })
  ); 
}; 

export const unLike = project => {
  return (
    $.ajax({
      method: 'DELETE', 
      url: `api/likes`,
      data: { project }
    })
  ); 
}; 
