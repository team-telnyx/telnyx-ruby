# typed: strong

module Telnyx
  module Models
    class VoiceCloneCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceCloneCreateParams, Telnyx::Internal::AnyHash)
        end

      # Gender of the voice clone.
      sig { returns(Telnyx::VoiceCloneCreateParams::Gender::OrSymbol) }
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

      # Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
      sig do
        returns(T.nilable(Telnyx::VoiceCloneCreateParams::Provider::OrSymbol))
      end
      attr_reader :provider

      sig do
        params(
          provider: Telnyx::VoiceCloneCreateParams::Provider::OrSymbol
        ).void
      end
      attr_writer :provider

      sig do
        params(
          gender: Telnyx::VoiceCloneCreateParams::Gender::OrSymbol,
          language: String,
          name: String,
          voice_design_id: String,
          provider: Telnyx::VoiceCloneCreateParams::Provider::OrSymbol,
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
        # Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
        provider: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            gender: Telnyx::VoiceCloneCreateParams::Gender::OrSymbol,
            language: String,
            name: String,
            voice_design_id: String,
            provider: Telnyx::VoiceCloneCreateParams::Provider::OrSymbol,
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
          T.type_alias { T.all(Symbol, Telnyx::VoiceCloneCreateParams::Gender) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(:male, Telnyx::VoiceCloneCreateParams::Gender::TaggedSymbol)
        FEMALE =
          T.let(:female, Telnyx::VoiceCloneCreateParams::Gender::TaggedSymbol)
        NEUTRAL =
          T.let(:neutral, Telnyx::VoiceCloneCreateParams::Gender::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneCreateParams::Gender::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
      module Provider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::VoiceCloneCreateParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELNYX =
          T.let(:telnyx, Telnyx::VoiceCloneCreateParams::Provider::TaggedSymbol)
        TELNYX_2 =
          T.let(:Telnyx, Telnyx::VoiceCloneCreateParams::Provider::TaggedSymbol)
        MINIMAX =
          T.let(
            :minimax,
            Telnyx::VoiceCloneCreateParams::Provider::TaggedSymbol
          )
        MINIMAX_2 =
          T.let(
            :Minimax,
            Telnyx::VoiceCloneCreateParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneCreateParams::Provider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
