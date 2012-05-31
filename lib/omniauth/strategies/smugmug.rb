require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class SmugMug < OmniAuth::Strategies::OAuth
      option :name, 'smugmug'
      option :client_options, {
        :site => 'http://api.smugmug.com',
        :request_token_path => "/services/oauth/getRequestToken.mg",
        :access_token_path  => "/services/oauth/getAccessToken.mg",
        :authorize_path     => "/services/oauth/authorize.mg"
      }

      uid { user['id'] }

      info do
        {
          'uid' => user['id'],
          'nickname' => user['NickName'],
          'name' => user['Name'],
          'urls' => {
              'website' => user['URL'],
          }
        }
      end

      extra do
        { 'user_hash' => user }
      end

      def user
        @user_hash ||= MultiJson.decode(@access_token.get('http://api.smugmug.com/services/api/json/1.2.2/?method=smugmug.auth.checkAccessToken').body)['Auth']['User']
      end

    end
  end
end

OmniAuth.config.add_camelization 'smugmug', 'SmugMug'
