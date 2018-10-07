class ArticlesController < ApplicationController
  def index
    @qiita_article = Article.qiita_article
    render json: @qiita_article
  end
end
