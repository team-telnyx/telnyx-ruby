# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#token
    class OAuthTokenResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute access_token
      #   The access token
      #
      #   @return [String]
      required :access_token, String

      # @!attribute expires_in
      #   Token lifetime in seconds
      #
      #   @return [Integer]
      required :expires_in, Integer

      # @!attribute token_type
      #   Token type
      #
      #   @return [Symbol, Telnyx::Models::OAuthTokenResponse::TokenType]
      required :token_type, enum: -> { Telnyx::Models::OAuthTokenResponse::TokenType }

      # @!attribute refresh_token
      #   Refresh token (if applicable)
      #
      #   @return [String, nil]
      optional :refresh_token, String

      # @!attribute scope
      #   Space-separated list of granted scopes
      #
      #   @return [String, nil]
      optional :scope, String

      # @!method initialize(access_token:, expires_in:, token_type:, refresh_token: nil, scope: nil)
      #   @param access_token [String] The access token
      #
      #   @param expires_in [Integer] Token lifetime in seconds
      #
      #   @param token_type [Symbol, Telnyx::Models::OAuthTokenResponse::TokenType] Token type
      #
      #   @param refresh_token [String] Refresh token (if applicable)
      #
      #   @param scope [String] Space-separated list of granted scopes

      # Token type
      #
      # @see Telnyx::Models::OAuthTokenResponse#token_type
      module TokenType
        extend Telnyx::Internal::Type::Enum

        BEARER = :Bearer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
