require 'faraday'
require 'json'
MY_QIITA_API_KEY=ENV['MY_QIITA_API_KEY']

class QiitaApi
  def initialize()
    @qiita = Qiita::Client.new(access_token: MY_QIITA_API_KEY)
  end
  def fetch()
    conn = Faraday::Connection.new(:url => 'http://qiita.com') do |builder|
      builder.use Faraday::Request::UrlEncoded
      builder.use Faraday::Response::Logger
      builder.use Faraday::Adapter::NetHttp
    end

    response = conn.get do |request|
      request.url '/api/v2/teams'
    end
    json = JSON.parser.new(response.body)
    p json.parse
  end
end