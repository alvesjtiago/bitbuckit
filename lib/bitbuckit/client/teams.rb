module Bitbuckit
  class Client
    module Teams
      def teams(role = "member", options = {})
        paginate("teams", role: role)
      end

      def team_repositories(team, options = {})
        paginate("repositories/#{team}")
      end
    end
  end
end
