require "bitbuckit/version"
require "bitbuckit/client"
require "bitbuckit/default"

module Bitbuckit
  class << self
    def client
      return @client if defined?(@client)
      @client = Bitbuckit::Client.new
    end
  end
end
