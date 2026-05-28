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

      sig do
        params(type: Telnyx::InworldVoiceSettings::Type::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # Voice settings provider type
        type:
      )
      end

      sig do
        override.returns({ type: Telnyx::InworldVoiceSettings::Type::OrSymbol })
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
    end
  end
end
