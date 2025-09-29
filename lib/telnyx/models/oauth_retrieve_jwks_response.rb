# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#retrieve_jwks
    class OAuthRetrieveJwksResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute keys
      #
      #   @return [Array<Telnyx::Models::OAuthRetrieveJwksResponse::Key>, nil]
      optional :keys, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::OAuthRetrieveJwksResponse::Key] }

      # @!method initialize(keys: nil)
      #   @param keys [Array<Telnyx::Models::OAuthRetrieveJwksResponse::Key>]

      class Key < Telnyx::Internal::Type::BaseModel
        # @!attribute alg
        #   Algorithm
        #
        #   @return [String, nil]
        optional :alg, String

        # @!attribute kid
        #   Key ID
        #
        #   @return [String, nil]
        optional :kid, String

        # @!attribute kty
        #   Key type
        #
        #   @return [String, nil]
        optional :kty, String

        # @!attribute use
        #   Key use
        #
        #   @return [String, nil]
        optional :use, String

        # @!method initialize(alg: nil, kid: nil, kty: nil, use: nil)
        #   @param alg [String] Algorithm
        #
        #   @param kid [String] Key ID
        #
        #   @param kty [String] Key type
        #
        #   @param use [String] Key use
      end
    end
  end
end
