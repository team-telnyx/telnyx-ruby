# typed: strong

module Telnyx
  module Models
    class XaiVoiceSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::XaiVoiceSettings, Telnyx::Internal::AnyHash)
        end

      # Voice settings provider type
      sig { returns(Telnyx::XaiVoiceSettings::Type::OrSymbol) }
      attr_accessor :type

      # Language code, or `auto` to detect automatically.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      sig do
        params(
          type: Telnyx::XaiVoiceSettings::Type::OrSymbol,
          language: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Voice settings provider type
        type:,
        # Language code, or `auto` to detect automatically.
        language: nil
      )
      end

      sig do
        override.returns(
          { type: Telnyx::XaiVoiceSettings::Type::OrSymbol, language: String }
        )
      end
      def to_hash
      end

      # Voice settings provider type
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::XaiVoiceSettings::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        XAI = T.let(:xai, Telnyx::XaiVoiceSettings::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::XaiVoiceSettings::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
