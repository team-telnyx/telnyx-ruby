# typed: strong

module Telnyx
  module Models
    class InworldVoiceSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::InworldVoiceSettings, Telnyx::Internal::AnyHash)
        end

      # Voice settings provider type
      sig { returns(Telnyx::InworldVoiceSettings::Type::OrSymbol) }
      attr_accessor :type

      # Controls the expressiveness and consistency of the Inworld `TTS2` model's speech
      # synthesis. `STABLE` favors consistent, predictable output, `CREATIVE` allows
      # more expressive variation, and `BALANCED` sits in between. Optional and only
      # supported by `TTS2`; when omitted, the provider default applies.
      sig do
        returns(T.nilable(Telnyx::InworldVoiceSettings::DeliveryMode::OrSymbol))
      end
      attr_reader :delivery_mode

      sig do
        params(
          delivery_mode: Telnyx::InworldVoiceSettings::DeliveryMode::OrSymbol
        ).void
      end
      attr_writer :delivery_mode

      sig do
        params(
          type: Telnyx::InworldVoiceSettings::Type::OrSymbol,
          delivery_mode: Telnyx::InworldVoiceSettings::DeliveryMode::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Voice settings provider type
        type:,
        # Controls the expressiveness and consistency of the Inworld `TTS2` model's speech
        # synthesis. `STABLE` favors consistent, predictable output, `CREATIVE` allows
        # more expressive variation, and `BALANCED` sits in between. Optional and only
        # supported by `TTS2`; when omitted, the provider default applies.
        delivery_mode: nil
      )
      end

      sig do
        override.returns(
          {
            type: Telnyx::InworldVoiceSettings::Type::OrSymbol,
            delivery_mode: Telnyx::InworldVoiceSettings::DeliveryMode::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Voice settings provider type
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InworldVoiceSettings::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INWORLD =
          T.let(:inworld, Telnyx::InworldVoiceSettings::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InworldVoiceSettings::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Controls the expressiveness and consistency of the Inworld `TTS2` model's speech
      # synthesis. `STABLE` favors consistent, predictable output, `CREATIVE` allows
      # more expressive variation, and `BALANCED` sits in between. Optional and only
      # supported by `TTS2`; when omitted, the provider default applies.
      module DeliveryMode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::InworldVoiceSettings::DeliveryMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STABLE =
          T.let(
            :STABLE,
            Telnyx::InworldVoiceSettings::DeliveryMode::TaggedSymbol
          )
        BALANCED =
          T.let(
            :BALANCED,
            Telnyx::InworldVoiceSettings::DeliveryMode::TaggedSymbol
          )
        CREATIVE =
          T.let(
            :CREATIVE,
            Telnyx::InworldVoiceSettings::DeliveryMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InworldVoiceSettings::DeliveryMode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
