//@flow
import "@babel/polyfill";
import React from "react";
import request from "superagent";
import { connect } from "react-redux";
import { getArticles } from "../../domain/articles";
type State = {
  articles: Array<Object>
};

type Props = {
  articles: any
};

class Article extends React.Component<Props, State> {
  async fetchArticles() {
    return await getArticles();
  }
  render() {
    const articles = this.fetchArticles();
    console.log(articles);
    return <div>a</div>;
  }
}

export default Article;

// const mapDispatchToProps = (dispatch: any) => ({});
// const mapStateToProps = (state: any) => ({
//   articles: getArticles()
// });

// export default connect(
//   mapStateToProps,
//   mapDispatchToProps
// )(Article);
