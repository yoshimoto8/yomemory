module Qiita
  class ArticleFetch
    def initialize(args)
      @response_body = fetch_response_body(args['client'], args['page'], args['per_page'] )
    end

    # get user title of article
    def get_title
      @response_body["title"]
    end

    # get user url of article
    def get_url
      @response_body["url"]
    end

    private

    def fetch_response_body(client, page, per_page)
      client.list_authenticated_user_items({page: page, per_page: per_page}).body
    end
  end
end