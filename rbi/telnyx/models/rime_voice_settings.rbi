# typed: strong

module Telnyx
  module Models
    class RimeVoiceSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RimeVoiceSettings, Telnyx::Internal::AnyHash)
        end

      # Voice settings provider type
      sig { returns(Telnyx::RimeVoiceSettings::Type::OrSymbol) }
      attr_accessor :type

      # The `identifier` for an integration secret
      # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      # that refers to your Rime API key. Only required when using your own Rime
      # account.
      sig { returns(T.nilable(String)) }
      attr_reader :api_key_ref

      sig { params(api_key_ref: String).void }
      attr_writer :api_key_ref

      # Speech speed multiplier. Default is 1.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :voice_speed

      sig { params(voice_speed: Float).void }
      attr_writer :voice_speed

      sig do
        params(
          type: Telnyx::RimeVoiceSettings::Type::OrSymbol,
          api_key_ref: String,
          voice_speed: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Voice settings provider type
        type:,
        # The `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your Rime API key. Only required when using your own Rime
        # account.
        api_key_ref: nil,
        # Speech speed multiplier. Default is 1.0.
        voice_speed: nil
      )
      end

      sig do
        override.returns(
          {
            type: Telnyx::RimeVoiceSettings::Type::OrSymbol,
            api_key_ref: String,
            voice_speed: Float
          }
        )
      end
      def to_hash
      end

      # Voice settings provider type
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RimeVoiceSettings::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RIME = T.let(:rime, Telnyx::RimeVoiceSettings::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::RimeVoiceSettings::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
