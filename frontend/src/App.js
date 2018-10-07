import React, { Component } from "react";
import Articles from "./containers/Articles/index";
import { BrowserRouter as Router, Route } from "react-router-dom";

class App extends Component {
  render() {
    return (
      <div className="App">
        <Articles />
      </div>
    );
  }
}

export default App;
