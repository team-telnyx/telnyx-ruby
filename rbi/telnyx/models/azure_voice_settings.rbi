# typed: strong

module Telnyx
  module Models
    class AzureVoiceSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::AzureVoiceSettings, Telnyx::Internal::AnyHash)
        end

      # Voice settings provider type
      sig { returns(Telnyx::AzureVoiceSettings::Type::OrSymbol) }
      attr_accessor :type

      # The `identifier` for an integration secret that refers to your Azure Speech API
      # key.
      sig { returns(T.nilable(String)) }
      attr_reader :api_key_ref

      sig { params(api_key_ref: String).void }
      attr_writer :api_key_ref

      # The deployment ID for a custom Azure neural voice.
      sig { returns(T.nilable(String)) }
      attr_reader :deployment_id

      sig { params(deployment_id: String).void }
      attr_writer :deployment_id

      # Audio effect to apply.
      sig { returns(T.nilable(Telnyx::AzureVoiceSettings::Effect::OrSymbol)) }
      attr_reader :effect

      sig { params(effect: Telnyx::AzureVoiceSettings::Effect::OrSymbol).void }
      attr_writer :effect

      # Voice gender filter.
      sig { returns(T.nilable(Telnyx::AzureVoiceSettings::Gender::OrSymbol)) }
      attr_reader :gender

      sig { params(gender: Telnyx::AzureVoiceSettings::Gender::OrSymbol).void }
      attr_writer :gender

      # The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
      # when using a custom API key.
      sig { returns(T.nilable(String)) }
      attr_reader :region

      sig { params(region: String).void }
      attr_writer :region

      sig do
        params(
          type: Telnyx::AzureVoiceSettings::Type::OrSymbol,
          api_key_ref: String,
          deployment_id: String,
          effect: Telnyx::AzureVoiceSettings::Effect::OrSymbol,
          gender: Telnyx::AzureVoiceSettings::Gender::OrSymbol,
          region: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Voice settings provider type
        type:,
        # The `identifier` for an integration secret that refers to your Azure Speech API
        # key.
        api_key_ref: nil,
        # The deployment ID for a custom Azure neural voice.
        deployment_id: nil,
        # Audio effect to apply.
        effect: nil,
        # Voice gender filter.
        gender: nil,
        # The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
        # when using a custom API key.
        region: nil
      )
      end

      sig do
        override.returns(
          {
            type: Telnyx::AzureVoiceSettings::Type::OrSymbol,
            api_key_ref: String,
            deployment_id: String,
            effect: Telnyx::AzureVoiceSettings::Effect::OrSymbol,
            gender: Telnyx::AzureVoiceSettings::Gender::OrSymbol,
            region: String
          }
        )
      end
      def to_hash
      end

      # Voice settings provider type
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AzureVoiceSettings::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AZURE = T.let(:azure, Telnyx::AzureVoiceSettings::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::AzureVoiceSettings::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Audio effect to apply.
      module Effect
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AzureVoiceSettings::Effect) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EQ_CAR =
          T.let(:eq_car, Telnyx::AzureVoiceSettings::Effect::TaggedSymbol)
        EQ_TELECOMHP8K =
          T.let(
            :eq_telecomhp8k,
            Telnyx::AzureVoiceSettings::Effect::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::AzureVoiceSettings::Effect::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Voice gender filter.
      module Gender
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AzureVoiceSettings::Gender) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE = T.let(:Male, Telnyx::AzureVoiceSettings::Gender::TaggedSymbol)
        FEMALE =
          T.let(:Female, Telnyx::AzureVoiceSettings::Gender::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::AzureVoiceSettings::Gender::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
