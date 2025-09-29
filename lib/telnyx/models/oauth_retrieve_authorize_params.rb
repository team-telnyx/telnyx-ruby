# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#retrieve_authorize
    class OAuthRetrieveAuthorizeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute client_id
      #   OAuth client identifier
      #
      #   @return [String]
      required :client_id, String

      # @!attribute redirect_uri
      #   Redirect URI
      #
      #   @return [String]
      required :redirect_uri, String

      # @!attribute response_type
      #   OAuth response type
      #
      #   @return [Symbol, Telnyx::Models::OAuthRetrieveAuthorizeParams::ResponseType]
      required :response_type, enum: -> { Telnyx::OAuthRetrieveAuthorizeParams::ResponseType }

      # @!attribute code_challenge
      #   PKCE code challenge
      #
      #   @return [String, nil]
      optional :code_challenge, String

      # @!attribute code_challenge_method
      #   PKCE code challenge method
      #
      #   @return [Symbol, Telnyx::Models::OAuthRetrieveAuthorizeParams::CodeChallengeMethod, nil]
      optional :code_challenge_method, enum: -> { Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod }

      # @!attribute scope
      #   Space-separated list of requested scopes
      #
      #   @return [String, nil]
      optional :scope, String

      # @!attribute state
      #   State parameter for CSRF protection
      #
      #   @return [String, nil]
      optional :state, String

      # @!method initialize(client_id:, redirect_uri:, response_type:, code_challenge: nil, code_challenge_method: nil, scope: nil, state: nil, request_options: {})
      #   @param client_id [String] OAuth client identifier
      #
      #   @param redirect_uri [String] Redirect URI
      #
      #   @param response_type [Symbol, Telnyx::Models::OAuthRetrieveAuthorizeParams::ResponseType] OAuth response type
      #
      #   @param code_challenge [String] PKCE code challenge
      #
      #   @param code_challenge_method [Symbol, Telnyx::Models::OAuthRetrieveAuthorizeParams::CodeChallengeMethod] PKCE code challenge method
      #
      #   @param scope [String] Space-separated list of requested scopes
      #
      #   @param state [String] State parameter for CSRF protection
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # OAuth response type
      module ResponseType
        extend Telnyx::Internal::Type::Enum

        CODE = :code

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # PKCE code challenge method
      module CodeChallengeMethod
        extend Telnyx::Internal::Type::Enum

        PLAIN = :plain
        S256 = :S256

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
