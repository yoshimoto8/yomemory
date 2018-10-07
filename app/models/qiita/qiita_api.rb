require "qiita/articlefetch"
MY_QIITA_API_KEY=ENV['MY_QIITA_API_KEY']

module Qiita
  # ここでqiitaのAPIを呼ばない方がいいかもしれない
  class QiitaApi
    def initialize
      @client = Qiita::Client.new(access_token: MY_QIITA_API_KEY)
    end

    def fetch
      ArticleFetch.new({client: @client, page: 1, per_page: 100})
    end

  end
end