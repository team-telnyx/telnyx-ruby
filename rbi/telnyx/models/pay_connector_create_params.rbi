# typed: strong

module Telnyx
  module Models
    class PayConnectorCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PayConnectorCreateParams, Telnyx::Internal::AnyHash)
        end

      # Configuration for a generic connector. A config update replaces the complete
      # object, not individual keys. Unknown config keys are discarded. Authentication
      # credentials must be nonblank strings when required by the selected auth_type.
      sig do
        returns(
          T.any(
            Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault,
            Telnyx::GenericPayConnectorConfig::BearerAuthentication,
            Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication
          )
        )
      end
      attr_accessor :config

      # Unique within the authenticated organization. Used in resource paths and as
      # connector_name in the Call Control Pay request. Cannot be renamed by update.
      sig { returns(String) }
      attr_accessor :name

      # Defaults to test on creation. Test restricts collected card numbers but still
      # contacts the configured processor; use a processor sandbox URL and sandbox
      # credentials. Live removes the test-card restriction. Neither mode locks API
      # updates.
      sig do
        returns(T.nilable(Telnyx::PayConnectorCreateParams::Mode::OrSymbol))
      end
      attr_reader :mode

      sig do
        params(mode: Telnyx::PayConnectorCreateParams::Mode::OrSymbol).void
      end
      attr_writer :mode

      # Connector type covered by this reference.
      sig do
        returns(T.nilable(Telnyx::PayConnectorCreateParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Telnyx::PayConnectorCreateParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          config:
            T.any(
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::OrHash,
              Telnyx::GenericPayConnectorConfig::BearerAuthentication::OrHash,
              Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication::OrHash
            ),
          name: String,
          mode: Telnyx::PayConnectorCreateParams::Mode::OrSymbol,
          type: Telnyx::PayConnectorCreateParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Configuration for a generic connector. A config update replaces the complete
        # object, not individual keys. Unknown config keys are discarded. Authentication
        # credentials must be nonblank strings when required by the selected auth_type.
        config:,
        # Unique within the authenticated organization. Used in resource paths and as
        # connector_name in the Call Control Pay request. Cannot be renamed by update.
        name:,
        # Defaults to test on creation. Test restricts collected card numbers but still
        # contacts the configured processor; use a processor sandbox URL and sandbox
        # credentials. Live removes the test-card restriction. Neither mode locks API
        # updates.
        mode: nil,
        # Connector type covered by this reference.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            config:
              T.any(
                Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault,
                Telnyx::GenericPayConnectorConfig::BearerAuthentication,
                Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication
              ),
            name: String,
            mode: Telnyx::PayConnectorCreateParams::Mode::OrSymbol,
            type: Telnyx::PayConnectorCreateParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Defaults to test on creation. Test restricts collected card numbers but still
      # contacts the configured processor; use a processor sandbox URL and sandbox
      # credentials. Live removes the test-card restriction. Neither mode locks API
      # updates.
      module Mode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PayConnectorCreateParams::Mode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEST =
          T.let(:test, Telnyx::PayConnectorCreateParams::Mode::TaggedSymbol)
        LIVE =
          T.let(:live, Telnyx::PayConnectorCreateParams::Mode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PayConnectorCreateParams::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Connector type covered by this reference.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PayConnectorCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GENERIC =
          T.let(:generic, Telnyx::PayConnectorCreateParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PayConnectorCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
