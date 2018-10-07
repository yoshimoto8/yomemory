require "qiita_api/article_fetch"
MY_QIITA_API_KEY=ENV['MY_QIITA_API_KEY']

module QiitaApi
  class QiitaAdapter
    def fetch
      ArticleFetch.new({page: 1, per_page: 100}).get_article()
    end
  end
end