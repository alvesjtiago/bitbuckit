module Bitbuckit
  class Client
    module Teams
      def teams(role = "member", options = {})
        paginate("teams", role: role, auto_paginate: true)
      end

      def team(username, options = {})
        get "teams/#{username}", options
      end

      def team_repositories(team, options = {})
        paginate("repositories/#{team}", auto_paginate: true)
      end
    end
  end
end
