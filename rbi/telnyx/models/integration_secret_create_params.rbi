# typed: strong

module Telnyx
  module Models
    class IntegrationSecretCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::IntegrationSecretCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The unique identifier of the secret.
      sig { returns(String) }
      attr_accessor :identifier

      # The type of secret.
      sig { returns(Telnyx::IntegrationSecretCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # The token for the secret. Required for bearer type secrets, ignored otherwise.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # The password for the secret. Required for basic type secrets, ignored otherwise.
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # The username for the secret. Required for basic type secrets, ignored otherwise.
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          identifier: String,
          type: Telnyx::IntegrationSecretCreateParams::Type::OrSymbol,
          token: String,
          password: String,
          username: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the secret.
        identifier:,
        # The type of secret.
        type:,
        # The token for the secret. Required for bearer type secrets, ignored otherwise.
        token: nil,
        # The password for the secret. Required for basic type secrets, ignored otherwise.
        password: nil,
        # The username for the secret. Required for basic type secrets, ignored otherwise.
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            identifier: String,
            type: Telnyx::IntegrationSecretCreateParams::Type::OrSymbol,
            token: String,
            password: String,
            username: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of secret.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::IntegrationSecretCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BEARER =
          T.let(
            :bearer,
            Telnyx::IntegrationSecretCreateParams::Type::TaggedSymbol
          )
        BASIC =
          T.let(
            :basic,
            Telnyx::IntegrationSecretCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::IntegrationSecretCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
