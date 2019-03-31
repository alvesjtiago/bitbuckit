module Bitbuckit
  class Client
    module Commits
      def commits(user = nil, repo = nil, options = {})
        get "repositories/#{user}/#{repo}/commits/", options
      end
    end
  end
end
