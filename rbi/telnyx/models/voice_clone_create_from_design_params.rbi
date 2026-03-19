# typed: strong

module Telnyx
  module Models
    class VoiceCloneCreateFromDesignParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VoiceCloneCreateFromDesignParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Gender of the voice clone.
      sig do
        returns(Telnyx::VoiceCloneCreateFromDesignParams::Gender::OrSymbol)
      end
      attr_accessor :gender

      # ISO 639-1 language code for the clone (e.g. `en`, `fr`, `de`).
      sig { returns(String) }
      attr_accessor :language

      # Name for the voice clone.
      sig { returns(String) }
      attr_accessor :name

      # UUID of the source voice design to clone.
      sig { returns(String) }
      attr_accessor :voice_design_id

      sig do
        params(
          gender: Telnyx::VoiceCloneCreateFromDesignParams::Gender::OrSymbol,
          language: String,
          name: String,
          voice_design_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Gender of the voice clone.
        gender:,
        # ISO 639-1 language code for the clone (e.g. `en`, `fr`, `de`).
        language:,
        # Name for the voice clone.
        name:,
        # UUID of the source voice design to clone.
        voice_design_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            gender: Telnyx::VoiceCloneCreateFromDesignParams::Gender::OrSymbol,
            language: String,
            name: String,
            voice_design_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Gender of the voice clone.
      module Gender
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::VoiceCloneCreateFromDesignParams::Gender)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(
            :male,
            Telnyx::VoiceCloneCreateFromDesignParams::Gender::TaggedSymbol
          )
        FEMALE =
          T.let(
            :female,
            Telnyx::VoiceCloneCreateFromDesignParams::Gender::TaggedSymbol
          )
        NEUTRAL =
          T.let(
            :neutral,
            Telnyx::VoiceCloneCreateFromDesignParams::Gender::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::VoiceCloneCreateFromDesignParams::Gender::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
