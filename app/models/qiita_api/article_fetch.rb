module QiitaApi
  class ArticleFetch
    def initialize(args)
      @response_body = fetch_response_body(args[:client], args[:page], args[:per_page] )
    end

    def get_article
      result_bodies = @response_body.map do |item|
        {
          title: item['title'],
          url: item['url']
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