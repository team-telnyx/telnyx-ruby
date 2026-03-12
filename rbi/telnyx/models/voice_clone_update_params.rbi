# typed: strong

module Telnyx
  module Models
    class VoiceCloneUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceCloneUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # New name for the voice clone.
      sig { returns(String) }
      attr_accessor :name

      # Updated gender for the voice clone.
      sig do
        returns(T.nilable(Telnyx::VoiceCloneUpdateParams::Gender::OrSymbol))
      end
      attr_reader :gender

      sig do
        params(gender: Telnyx::VoiceCloneUpdateParams::Gender::OrSymbol).void
      end
      attr_writer :gender

      # Updated ISO 639-1 language code or `auto`.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      sig do
        params(
          id: String,
          name: String,
          gender: Telnyx::VoiceCloneUpdateParams::Gender::OrSymbol,
          language: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # New name for the voice clone.
        name:,
        # Updated gender for the voice clone.
        gender: nil,
        # Updated ISO 639-1 language code or `auto`.
        language: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            name: String,
            gender: Telnyx::VoiceCloneUpdateParams::Gender::OrSymbol,
            language: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Updated gender for the voice clone.
      module Gender
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceCloneUpdateParams::Gender) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(:male, Telnyx::VoiceCloneUpdateParams::Gender::TaggedSymbol)
        FEMALE =
          T.let(:female, Telnyx::VoiceCloneUpdateParams::Gender::TaggedSymbol)
        NEUTRAL =
          T.let(:neutral, Telnyx::VoiceCloneUpdateParams::Gender::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneUpdateParams::Gender::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
