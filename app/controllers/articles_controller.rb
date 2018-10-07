class ArticlesController < ApplicationController
  def index
    Article.qiita_article
  end
end
