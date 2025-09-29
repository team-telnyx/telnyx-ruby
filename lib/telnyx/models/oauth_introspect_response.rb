# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#introspect
    class OAuthIntrospectResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute active
      #   Whether the token is active
      #
      #   @return [Boolean]
      required :active, Telnyx::Internal::Type::Boolean

      # @!attribute aud
      #   Audience
      #
      #   @return [String, nil]
      optional :aud, String

      # @!attribute client_id
      #   Client identifier
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!attribute exp
      #   Expiration timestamp
      #
      #   @return [Integer, nil]
      optional :exp, Integer

      # @!attribute iat
      #   Issued at timestamp
      #
      #   @return [Integer, nil]
      optional :iat, Integer

      # @!attribute iss
      #   Issuer
      #
      #   @return [String, nil]
      optional :iss, String

      # @!attribute scope
      #   Space-separated list of scopes
      #
      #   @return [String, nil]
      optional :scope, String

      # @!method initialize(active:, aud: nil, client_id: nil, exp: nil, iat: nil, iss: nil, scope: nil)
      #   @param active [Boolean] Whether the token is active
      #
      #   @param aud [String] Audience
      #
      #   @param client_id [String] Client identifier
      #
      #   @param exp [Integer] Expiration timestamp
      #
      #   @param iat [Integer] Issued at timestamp
      #
      #   @param iss [String] Issuer
      #
      #   @param scope [String] Space-separated list of scopes
    end
  end
end
