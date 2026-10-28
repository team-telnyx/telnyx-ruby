# frozen_string_literal: true

module Telnyx
  module Models
    # Configuration for a generic connector. A config update replaces the complete
    # object, not individual keys. Unknown config keys are discarded. Authentication
    # credentials must be nonblank strings when required by the selected auth_type.
    module GenericPayConnectorConfig
      extend Telnyx::Internal::Type::Union

      variant -> { Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault }

      variant -> { Telnyx::GenericPayConnectorConfig::BearerAuthentication }

      variant -> { Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication }

      class BasicAuthenticationAlsoTheValidationDefault < Telnyx::Internal::Type::BaseModel
        # @!attribute password
        #   Basic password.
        #
        #   @return [String]
        required :password, String

        # @!attribute username
        #   Basic username.
        #
        #   @return [String]
        required :username, String

        # @!attribute auth_type
        #
        #   @return [Symbol, Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType, nil]
        optional :auth_type,
                 enum: -> { Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType }

        # @!attribute endpoint_url
        #   HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
        #   transit.
        #
        #   @return [String, nil]
        optional :endpoint_url, String

        # @!attribute timeout
        #   Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
        #   removed before storage. Not the IVR digit-gather timeout.
        #
        #   @return [Integer, nil]
        optional :timeout, Integer, nil?: true

        request_only do
          # @!attribute token
          #   Nonblank string required for bearer authentication. Write-only; omitted from
          #   responses. Re-send when replacing a bearer-auth config.
          #
          #   @return [Object, nil]
          optional :token, Telnyx::Internal::Type::Unknown
        end

        # @!method initialize(password:, username:, token: nil, auth_type: nil, endpoint_url: nil, timeout: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault}
        #   for more details.
        #
        #   @param password [String] Basic password.
        #
        #   @param username [String] Basic username.
        #
        #   @param token [Object] Nonblank string required for bearer authentication. Write-only; omitted from res
        #
        #   @param auth_type [Symbol, Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType]
        #
        #   @param endpoint_url [String] HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in tr
        #
        #   @param timeout [Integer, nil] Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is remo

        # @see Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault#auth_type
        module AuthType
          extend Telnyx::Internal::Type::Enum

          BASIC = :basic

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class BearerAuthentication < Telnyx::Internal::Type::BaseModel
        # @!attribute token
        #   Processor bearer token.
        #
        #   @return [String]
        required :token, String

        # @!attribute auth_type
        #
        #   @return [Symbol, :bearer]
        required :auth_type, const: :bearer

        # @!attribute endpoint_url
        #   HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
        #   transit.
        #
        #   @return [String, nil]
        optional :endpoint_url, String

        # @!attribute timeout
        #   Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
        #   removed before storage. Not the IVR digit-gather timeout.
        #
        #   @return [Integer, nil]
        optional :timeout, Integer, nil?: true

        # @!attribute username
        #   Nonblank string required for basic authentication. Returned in connector
        #   responses.
        #
        #   @return [Object, nil]
        optional :username, Telnyx::Internal::Type::Unknown

        request_only do
          # @!attribute password
          #   Nonblank string required for basic authentication. Write-only; omitted from
          #   responses. Re-send when replacing a basic-auth config.
          #
          #   @return [Object, nil]
          optional :password, Telnyx::Internal::Type::Unknown
        end

        # @!method initialize(token:, endpoint_url: nil, password: nil, timeout: nil, username: nil, auth_type: :bearer)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::GenericPayConnectorConfig::BearerAuthentication} for more
        #   details.
        #
        #   @param token [String] Processor bearer token.
        #
        #   @param endpoint_url [String] HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in tr
        #
        #   @param password [Object] Nonblank string required for basic authentication. Write-only; omitted from resp
        #
        #   @param timeout [Integer, nil] Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is remo
        #
        #   @param username [Object] Nonblank string required for basic authentication. Returned in connector respons
        #
        #   @param auth_type [Symbol, :bearer]
      end

      class NoProcessorAuthentication < Telnyx::Internal::Type::BaseModel
        # @!attribute auth_type
        #
        #   @return [Symbol, :none]
        required :auth_type, const: :none

        # @!attribute endpoint_url
        #   HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
        #   transit.
        #
        #   @return [String, nil]
        optional :endpoint_url, String

        # @!attribute timeout
        #   Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
        #   removed before storage. Not the IVR digit-gather timeout.
        #
        #   @return [Integer, nil]
        optional :timeout, Integer, nil?: true

        # @!attribute username
        #   Nonblank string required for basic authentication. Returned in connector
        #   responses.
        #
        #   @return [Object, nil]
        optional :username, Telnyx::Internal::Type::Unknown

        request_only do
          # @!attribute token
          #   Nonblank string required for bearer authentication. Write-only; omitted from
          #   responses. Re-send when replacing a bearer-auth config.
          #
          #   @return [Object, nil]
          optional :token, Telnyx::Internal::Type::Unknown

          # @!attribute password
          #   Nonblank string required for basic authentication. Write-only; omitted from
          #   responses. Re-send when replacing a basic-auth config.
          #
          #   @return [Object, nil]
          optional :password, Telnyx::Internal::Type::Unknown
        end

        # @!method initialize(token: nil, endpoint_url: nil, password: nil, timeout: nil, username: nil, auth_type: :none)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::GenericPayConnectorConfig::NoProcessorAuthentication} for more
        #   details.
        #
        #   @param token [Object] Nonblank string required for bearer authentication. Write-only; omitted from res
        #
        #   @param endpoint_url [String] HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in tr
        #
        #   @param password [Object] Nonblank string required for basic authentication. Write-only; omitted from resp
        #
        #   @param timeout [Integer, nil] Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is remo
        #
        #   @param username [Object] Nonblank string required for basic authentication. Returned in connector respons
        #
        #   @param auth_type [Symbol, :none]
      end

      # @!method self.variants
      #   @return [Array(Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault, Telnyx::Models::GenericPayConnectorConfig::BearerAuthentication, Telnyx::Models::GenericPayConnectorConfig::NoProcessorAuthentication)]
    end
  end
end
