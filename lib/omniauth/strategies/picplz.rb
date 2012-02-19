require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Picplz < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'http://api.picplz.com/',
        :authorize_url => 'https://picplz.com/oauth2/authenticate',
        :token_url => "https://picplz.com/oauth2/access_token"
      }

      info do
        {
          :name => raw_info['display_name'],
          :uid => raw_info['id'],
          :username => raw_info['username']
        }
      end

      def raw_info
        access_token.options[:mode] = :query
        access_token.options[:param_name] = :oauth_token
        user_info = access_token.get('https://api.picplz.com/api/v2/user.json?id=self')
        @raw_info ||= user_info.parsed['value']['users'].last
      end

      
      def client_params
        {:client_id => options[:client_id], :redirect_uri => callback_url ,:response_type => "code"}
      end
    end
  end
end