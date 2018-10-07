class ArticlesController < ApplicationController
  def index
    qiita_article = Article.qiita_article
  end
end
