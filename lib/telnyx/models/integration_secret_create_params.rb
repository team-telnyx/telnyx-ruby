# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IntegrationSecrets#create
    class IntegrationSecretCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute identifier
      #   The unique identifier of the secret.
      #
      #   @return [String]
      required :identifier, String

      # @!attribute type
      #   The type of secret.
      #
      #   @return [Symbol, Telnyx::Models::IntegrationSecretCreateParams::Type]
      required :type, enum: -> { Telnyx::IntegrationSecretCreateParams::Type }

      # @!attribute token
      #   The token for the secret. Required for bearer type secrets, ignored otherwise.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute password
      #   The password for the secret. Required for basic type secrets, ignored otherwise.
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute username
      #   The username for the secret. Required for basic type secrets, ignored otherwise.
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(identifier:, type:, token: nil, password: nil, username: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::IntegrationSecretCreateParams} for more details.
      #
      #   @param identifier [String] The unique identifier of the secret.
      #
      #   @param type [Symbol, Telnyx::Models::IntegrationSecretCreateParams::Type] The type of secret.
      #
      #   @param token [String] The token for the secret. Required for bearer type secrets, ignored otherwise.
      #
      #   @param password [String] The password for the secret. Required for basic type secrets, ignored otherwise.
      #
      #   @param username [String] The username for the secret. Required for basic type secrets, ignored otherwise.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The type of secret.
      module Type
        extend Telnyx::Internal::Type::Enum

        BEARER = :bearer
        BASIC = :basic

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
