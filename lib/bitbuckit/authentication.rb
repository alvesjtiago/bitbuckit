module Bitbuckit
  module Authentication
    def application_authentication
      if @access_token
        {
          access_token: @access_token,
          refresh_token: @refresh_token
        }
      end
    end
  end
end
