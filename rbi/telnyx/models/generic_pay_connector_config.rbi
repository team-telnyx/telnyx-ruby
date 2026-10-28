# typed: strong

module Telnyx
  module Models
    # Configuration for a generic connector. A config update replaces the complete
    # object, not individual keys. Unknown config keys are discarded. Authentication
    # credentials must be nonblank strings when required by the selected auth_type.
    module GenericPayConnectorConfig
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault,
            Telnyx::GenericPayConnectorConfig::BearerAuthentication,
            Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication
          )
        end

      class BasicAuthenticationAlsoTheValidationDefault < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault,
              Telnyx::Internal::AnyHash
            )
          end

        # Basic password.
        sig { returns(String) }
        attr_accessor :password

        # Basic username.
        sig { returns(String) }
        attr_accessor :username

        sig do
          returns(
            T.nilable(
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType::OrSymbol
            )
          )
        end
        attr_reader :auth_type

        sig do
          params(
            auth_type:
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType::OrSymbol
          ).void
        end
        attr_writer :auth_type

        # HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
        # transit.
        sig { returns(T.nilable(String)) }
        attr_reader :endpoint_url

        sig { params(endpoint_url: String).void }
        attr_writer :endpoint_url

        # Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
        # removed before storage. Not the IVR digit-gather timeout.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :timeout

        # Nonblank string required for bearer authentication. Write-only; omitted from
        # responses. Re-send when replacing a bearer-auth config.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :token

        sig { params(token: T.anything).void }
        attr_writer :token

        sig do
          params(
            password: String,
            username: String,
            token: T.anything,
            auth_type:
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType::OrSymbol,
            endpoint_url: String,
            timeout: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Basic password.
          password:,
          # Basic username.
          username:,
          # Nonblank string required for bearer authentication. Write-only; omitted from
          # responses. Re-send when replacing a bearer-auth config.
          token: nil,
          auth_type: nil,
          # HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
          # transit.
          endpoint_url: nil,
          # Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
          # removed before storage. Not the IVR digit-gather timeout.
          timeout: nil
        )
        end

        sig do
          override.returns(
            {
              password: String,
              username: String,
              token: T.anything,
              auth_type:
                Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType::OrSymbol,
              endpoint_url: String,
              timeout: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        module AuthType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BASIC =
            T.let(
              :basic,
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::AuthType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class BearerAuthentication < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::GenericPayConnectorConfig::BearerAuthentication,
              Telnyx::Internal::AnyHash
            )
          end

        # Processor bearer token.
        sig { returns(String) }
        attr_accessor :token

        sig { returns(Symbol) }
        attr_accessor :auth_type

        # HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
        # transit.
        sig { returns(T.nilable(String)) }
        attr_reader :endpoint_url

        sig { params(endpoint_url: String).void }
        attr_writer :endpoint_url

        # Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
        # removed before storage. Not the IVR digit-gather timeout.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :timeout

        # Nonblank string required for basic authentication. Returned in connector
        # responses.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :username

        sig { params(username: T.anything).void }
        attr_writer :username

        # Nonblank string required for basic authentication. Write-only; omitted from
        # responses. Re-send when replacing a basic-auth config.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :password

        sig { params(password: T.anything).void }
        attr_writer :password

        sig do
          params(
            token: String,
            endpoint_url: String,
            password: T.anything,
            timeout: T.nilable(Integer),
            username: T.anything,
            auth_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Processor bearer token.
          token:,
          # HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
          # transit.
          endpoint_url: nil,
          # Nonblank string required for basic authentication. Write-only; omitted from
          # responses. Re-send when replacing a basic-auth config.
          password: nil,
          # Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
          # removed before storage. Not the IVR digit-gather timeout.
          timeout: nil,
          # Nonblank string required for basic authentication. Returned in connector
          # responses.
          username: nil,
          auth_type: :bearer
        )
        end

        sig do
          override.returns(
            {
              token: String,
              auth_type: Symbol,
              endpoint_url: String,
              password: T.anything,
              timeout: T.nilable(Integer),
              username: T.anything
            }
          )
        end
        def to_hash
        end
      end

      class NoProcessorAuthentication < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Symbol) }
        attr_accessor :auth_type

        # HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
        # transit.
        sig { returns(T.nilable(String)) }
        attr_reader :endpoint_url

        sig { params(endpoint_url: String).void }
        attr_writer :endpoint_url

        # Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
        # removed before storage. Not the IVR digit-gather timeout.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :timeout

        # Nonblank string required for basic authentication. Returned in connector
        # responses.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :username

        sig { params(username: T.anything).void }
        attr_writer :username

        # Nonblank string required for bearer authentication. Write-only; omitted from
        # responses. Re-send when replacing a bearer-auth config.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :token

        sig { params(token: T.anything).void }
        attr_writer :token

        # Nonblank string required for basic authentication. Write-only; omitted from
        # responses. Re-send when replacing a basic-auth config.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :password

        sig { params(password: T.anything).void }
        attr_writer :password

        sig do
          params(
            token: T.anything,
            endpoint_url: String,
            password: T.anything,
            timeout: T.nilable(Integer),
            username: T.anything,
            auth_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Nonblank string required for bearer authentication. Write-only; omitted from
          # responses. Re-send when replacing a bearer-auth config.
          token: nil,
          # HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
          # transit.
          endpoint_url: nil,
          # Nonblank string required for basic authentication. Write-only; omitted from
          # responses. Re-send when replacing a basic-auth config.
          password: nil,
          # Processor HTTP timeout in milliseconds. Omitted or null uses 10000; null is
          # removed before storage. Not the IVR digit-gather timeout.
          timeout: nil,
          # Nonblank string required for basic authentication. Returned in connector
          # responses.
          username: nil,
          auth_type: :none
        )
        end

        sig do
          override.returns(
            {
              auth_type: Symbol,
              token: T.anything,
              endpoint_url: String,
              password: T.anything,
              timeout: T.nilable(Integer),
              username: T.anything
            }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(T::Array[Telnyx::GenericPayConnectorConfig::Variants])
      end
      def self.variants
      end
    end
  end
end
