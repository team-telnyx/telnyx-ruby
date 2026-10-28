# typed: strong

module Telnyx
  module Models
    class PayConnectorUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PayConnectorUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      # Configuration for a generic connector. A config update replaces the complete
      # object, not individual keys. Unknown config keys are discarded. Authentication
      # credentials must be nonblank strings when required by the selected auth_type.
      sig do
        returns(
          T.nilable(
            T.any(
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault,
              Telnyx::GenericPayConnectorConfig::BearerAuthentication,
              Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication
            )
          )
        )
      end
      attr_reader :config

      sig do
        params(
          config:
            T.any(
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::OrHash,
              Telnyx::GenericPayConnectorConfig::BearerAuthentication::OrHash,
              Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication::OrHash
            )
        ).void
      end
      attr_writer :config

      # Omit to preserve the existing mode. Use an explicit test or live value.
      sig do
        returns(T.nilable(Telnyx::PayConnectorUpdateParams::Mode::OrSymbol))
      end
      attr_reader :mode

      sig do
        params(mode: Telnyx::PayConnectorUpdateParams::Mode::OrSymbol).void
      end
      attr_writer :mode

      # Generic connector type. Omit to preserve the existing value.
      sig do
        returns(T.nilable(Telnyx::PayConnectorUpdateParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Telnyx::PayConnectorUpdateParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          name: String,
          config:
            T.any(
              Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault::OrHash,
              Telnyx::GenericPayConnectorConfig::BearerAuthentication::OrHash,
              Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication::OrHash
            ),
          mode: Telnyx::PayConnectorUpdateParams::Mode::OrSymbol,
          type: Telnyx::PayConnectorUpdateParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        # Configuration for a generic connector. A config update replaces the complete
        # object, not individual keys. Unknown config keys are discarded. Authentication
        # credentials must be nonblank strings when required by the selected auth_type.
        config: nil,
        # Omit to preserve the existing mode. Use an explicit test or live value.
        mode: nil,
        # Generic connector type. Omit to preserve the existing value.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            config:
              T.any(
                Telnyx::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault,
                Telnyx::GenericPayConnectorConfig::BearerAuthentication,
                Telnyx::GenericPayConnectorConfig::NoProcessorAuthentication
              ),
            mode: Telnyx::PayConnectorUpdateParams::Mode::OrSymbol,
            type: Telnyx::PayConnectorUpdateParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Omit to preserve the existing mode. Use an explicit test or live value.
      module Mode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PayConnectorUpdateParams::Mode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEST =
          T.let(:test, Telnyx::PayConnectorUpdateParams::Mode::TaggedSymbol)
        LIVE =
          T.let(:live, Telnyx::PayConnectorUpdateParams::Mode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PayConnectorUpdateParams::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Generic connector type. Omit to preserve the existing value.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PayConnectorUpdateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GENERIC =
          T.let(:generic, Telnyx::PayConnectorUpdateParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PayConnectorUpdateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
