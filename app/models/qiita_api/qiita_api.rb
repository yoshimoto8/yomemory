require "qiita_api/article_fetch"
MY_QIITA_API_KEY=ENV['MY_QIITA_API_KEY']

module QiitaApi
  # ここでqiitaのAPIを呼ばない方がいいかもしれない
  class QiitaAdapter
    def initialize
      @client = Qiita::Client.new(access_token: MY_QIITA_API_KEY)
    end

    def fetch
      ArticleFetch.new({client: @client, page: 1, per_page: 100})
    end
  end
end