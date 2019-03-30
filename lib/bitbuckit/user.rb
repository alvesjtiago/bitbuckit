module Bitbuckit
  class User
    def self.path(user)
      case user
      when String
        "users/#{user}"
      else
        "user"
      end
    end
  end
end
