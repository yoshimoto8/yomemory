require 'qiita/qiita_api'

class Article < ApplicationRecord

  def self.qiita_article
    binding.pry
  end
end
