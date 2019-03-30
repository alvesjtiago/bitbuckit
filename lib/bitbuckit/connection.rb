require "sawyer"
require "bitbuckit/authentication"

module Bitbuckit
  module Connection
    include Bitbuckit::Authentication

    def get(url, options = {})
      request :get, url, options
    end

    def post(url, options = {})
      request :post, url, options
    end

    def put(url, options = {})
      request :put, url, options
    end

    def paginate(url, options = {}, &block)
      data = request(:get, url, options.dup)

      while @last_response.next
        @last_response = request(:get, @last_response.next, options.dup)
        if block_given?
          yield(data, @last_response)
        else
          data.values.concat(@last_response.values)
        end
      end

      data.values
    end

    def agent
      @agent ||= Sawyer::Agent.new(endpoint) do |http|
        http.headers[:content_type] = "application/json"
        http.params = http.params.merge application_authentication
      end
    end

    def root
      get "/"
    end

    def last_response
      @last_response if defined? @last_response
    end

    protected

      def endpoint
        api_endpoint
      end

    private

      def reset_agent
        @agent = nil
      end

      def request(method, path, data, options = {})
        opts = { query: data }

        @last_response = response = agent.call(method, Addressable::URI.parse(path.to_s).normalize.to_s, data, opts).data
        response
      end
  end
end
