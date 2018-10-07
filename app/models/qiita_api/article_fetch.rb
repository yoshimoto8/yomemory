MY_QIITA_API_KEY=ENV['MY_QIITA_API_KEY']
module QiitaApi
  class ArticleFetch
    def initialize(args)
      @client = Qiita::Client.new(access_token: MY_QIITA_API_KEY)
      @response_body = fetch_response_body(@client, args[:page], args[:per_page] )
    end

    def get_article
      result_bodies = @response_body.map do |item|
        {
          title: item['title'],
          url: item['url'],
          page_views_count: item['page_views_count'],
          created_at: item['created_at']
        }
      end
      result_bodies
    end

    private

    def fetch_response_body(client, page, per_page)
      client.list_authenticated_user_items({page: page, per_page: per_page}).body
    end
  end
end