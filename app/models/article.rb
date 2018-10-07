require "qiita_api/qiita_api"
class Article < ApplicationRecord
  include QiitaApi
  def self.qiita_article
    QiitaAdapter.new.fetch
  end
end
