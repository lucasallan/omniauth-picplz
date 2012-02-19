require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Picplz < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'http://api.picplz.com/',
        :authorize_url => 'https://picplz.com/oauth2/authenticate',
        :token_url => "https://picplz.com/oauth2/access_token"
      }
      
      def request_phase
        super
      end

    end
  end
end