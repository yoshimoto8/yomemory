//@flow
import "babel-polyfill";
import React from "react";
import request from "superagent";
import { connect } from "react-redux";

type State = {
  articles: Array<Object>
};

class Article extends React.Component<void, State> {
  constructor() {
    super();
    this.state = {
      articles: []
    };
  }
  componentDidMount() {
    console.log(this.fetchArticles());
  }

  async fetchArticles() {
    const endPoint = "http://localhost:3000/articles";
    try {
      const res = await request.get(endPoint);
      console.log(res);
      return res.body;
    } catch (error) {
      console.log(error);
      return {};
    }
  }

  render() {
    return <div>¥</div>;
  }
}

const mapDispatchToProps = (dispatch: any) => ({});
const mapStateToProps = (state: any) => ({});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Article);
