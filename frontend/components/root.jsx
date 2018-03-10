import React from "react";
import { HashRouter, Route } from "react-router-dom";
import { Provider } from "react-redux";
import App from "./App";

const Root = ({ store }) => (
  <Provider store={store}>
    <HashRouter>
      {/* <Route component={App} /> */}
      <App />
    </HashRouter>
  </Provider>
);

export default Root;
