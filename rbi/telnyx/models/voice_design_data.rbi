# typed: strong

module Telnyx
  module Models
    class VoiceDesignData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceDesignData, Telnyx::Internal::AnyHash)
        end

      # Unique identifier for the voice design.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Timestamp when the voice design was first created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Name of the voice design.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Natural language prompt used to define the voice style for this version.
      sig { returns(T.nilable(String)) }
      attr_reader :prompt

      sig { params(prompt: String).void }
      attr_writer :prompt

      # Voice synthesis provider used for this design.
      sig do
        returns(T.nilable(Telnyx::VoiceDesignData::Provider::TaggedSymbol))
      end
      attr_accessor :provider

      # List of TTS model identifiers supported by this design's provider (e.g.
      # `Qwen3TTS`, `speech-02-turbo`).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :provider_supported_models

      sig { params(provider_supported_models: T::Array[String]).void }
      attr_writer :provider_supported_models

      # Provider-specific voice identifier. For Telnyx designs this is the design
      # version ID; for Minimax it is the Minimax-assigned voice ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :provider_voice_id

      # Identifies the resource type.
      sig do
        returns(T.nilable(Telnyx::VoiceDesignData::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::VoiceDesignData::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      # Sample text used to synthesize this version.
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      # Timestamp when the voice design was last updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # Version number of this voice design.
      sig { returns(T.nilable(Integer)) }
      attr_reader :version

      sig { params(version: Integer).void }
      attr_writer :version

      # Timestamp when this specific version was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :version_created_at

      sig { params(version_created_at: Time).void }
      attr_writer :version_created_at

      # Size of the voice sample audio in bytes.
      sig { returns(T.nilable(Integer)) }
      attr_reader :voice_sample_size

      sig { params(voice_sample_size: Integer).void }
      attr_writer :voice_sample_size

      # A voice design object with full version detail.
      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          prompt: String,
          provider: T.nilable(Telnyx::VoiceDesignData::Provider::OrSymbol),
          provider_supported_models: T::Array[String],
          provider_voice_id: T.nilable(String),
          record_type: Telnyx::VoiceDesignData::RecordType::OrSymbol,
          text: String,
          updated_at: Time,
          version: Integer,
          version_created_at: Time,
          voice_sample_size: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the voice design.
        id: nil,
        # Timestamp when the voice design was first created.
        created_at: nil,
        # Name of the voice design.
        name: nil,
        # Natural language prompt used to define the voice style for this version.
        prompt: nil,
        # Voice synthesis provider used for this design.
        provider: nil,
        # List of TTS model identifiers supported by this design's provider (e.g.
        # `Qwen3TTS`, `speech-02-turbo`).
        provider_supported_models: nil,
        # Provider-specific voice identifier. For Telnyx designs this is the design
        # version ID; for Minimax it is the Minimax-assigned voice ID.
        provider_voice_id: nil,
        # Identifies the resource type.
        record_type: nil,
        # Sample text used to synthesize this version.
        text: nil,
        # Timestamp when the voice design was last updated.
        updated_at: nil,
        # Version number of this voice design.
        version: nil,
        # Timestamp when this specific version was created.
        version_created_at: nil,
        # Size of the voice sample audio in bytes.
        voice_sample_size: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            name: String,
            prompt: String,
            provider:
              T.nilable(Telnyx::VoiceDesignData::Provider::TaggedSymbol),
            provider_supported_models: T::Array[String],
            provider_voice_id: T.nilable(String),
            record_type: Telnyx::VoiceDesignData::RecordType::TaggedSymbol,
            text: String,
            updated_at: Time,
            version: Integer,
            version_created_at: Time,
            voice_sample_size: Integer
          }
        )
      end
      def to_hash
      end

      # Voice synthesis provider used for this design.
      module Provider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceDesignData::Provider) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELNYX = T.let(:telnyx, Telnyx::VoiceDesignData::Provider::TaggedSymbol)
        TELNYX_2 =
          T.let(:Telnyx, Telnyx::VoiceDesignData::Provider::TaggedSymbol)
        MINIMAX =
          T.let(:minimax, Telnyx::VoiceDesignData::Provider::TaggedSymbol)
        MINIMAX_2 =
          T.let(:Minimax, Telnyx::VoiceDesignData::Provider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::VoiceDesignData::Provider::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Identifies the resource type.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceDesignData::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VOICE_DESIGN =
          T.let(
            :voice_design,
            Telnyx::VoiceDesignData::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::VoiceDesignData::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
