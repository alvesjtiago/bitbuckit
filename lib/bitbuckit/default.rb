require "bitbuckit/version"

module Bitbuckit
  # Default configuration options for {Client}
  module Default
    # Default API endpoint
    API_ENDPOINT = "https://api.bitbucket.org/2.0".freeze

    def api_endpoint
      ENV["BITBUCKIT_API_ENDPOINT"] || API_ENDPOINT
    end
  end
end
