export const createLike = project => {
  debugger
  return (
    $.ajax({
      method: 'POST', 
      url: `api/likes`,
      data: { project }
    })
  ); 
}; 

export const unLike = project => {
  debugger
  return (
    $.ajax({
      method: 'DELETE', 
      url: `api/likes`,
      data: { project }
    })
  ); 
}; 
