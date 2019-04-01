require "bitbuckit/connection"
require "bitbuckit/default"
require "bitbuckit/user"
require "bitbuckit/client/commits"
require "bitbuckit/client/teams"
require "bitbuckit/client/users"

module Bitbuckit
  class Client
    include Bitbuckit::Connection
    include Bitbuckit::Default
    include Bitbuckit::Client::Commits
    include Bitbuckit::Client::Teams
    include Bitbuckit::Client::Users

    def initialize(options = {})
      @access_token = options[:access_token]
      @refresh_token = options[:refresh_token]
    end
  end
end
