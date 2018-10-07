require "qiita_api/qiita_api"
class Article < ApplicationRecord
  include QiitaApi
  def self.qiita_article
    binding.pry
    QiitaAdapter.new.fetch
  end
end
