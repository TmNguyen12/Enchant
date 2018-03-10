export const selectProjects = state => Object.values(state.entities.projects);

export const selectItems = state => {
  console.log(state);
  return Object.values(state.entities.items.byId);
};
