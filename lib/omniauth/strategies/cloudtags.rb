require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Cloudtags < OmniAuth::Strategies::OAuth2
      PARAMS = %w[auth_ref]

      option :name, 'cloudtags'
      option :client_options, {:site => 'http://app.cloudtags.com'}

      uid { raw_info['id'] }

      info do
        {
          :email => raw_info['email'],
          :name  => raw_info['name']
        }
      end

      def request_phase
        params = request.params.slice *PARAMS
        options.authorize_params.update params

        super
      end

      def raw_info
        @raw_info ||= begin
          parsed = access_token.get('/api/v1/me').parsed
          parsed.fetch 'user', Hash.new
        end
      end
    end
  end
end
