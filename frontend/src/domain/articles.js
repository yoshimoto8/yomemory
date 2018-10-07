import "@babel/polyfill";
import request from "superagent";

export const getArticles = async (): any => {
  const endPoint = "http://localhost:3000/articles";
  try {
    const res = await request.get(endPoint);
    return res.body;
  } catch (error) {
    return {};
  }
};
