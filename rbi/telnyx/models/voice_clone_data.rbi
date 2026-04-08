# typed: strong

module Telnyx
  module Models
    class VoiceCloneData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceCloneData, Telnyx::Internal::AnyHash)
        end

      # Unique identifier for the voice clone.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Timestamp when the voice clone was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Gender of the voice clone.
      sig { returns(T.nilable(Telnyx::VoiceCloneData::Gender::TaggedSymbol)) }
      attr_accessor :gender

      # Voice style description. If not explicitly set on upload, falls back to the
      # source design's prompt text.
      sig { returns(T.nilable(String)) }
      attr_accessor :label

      # ISO 639-1 language code of the voice clone.
      sig { returns(T.nilable(String)) }
      attr_accessor :language

      # TTS model identifier for the voice clone.
      sig { returns(T.nilable(Telnyx::VoiceCloneData::ModelID::TaggedSymbol)) }
      attr_reader :model_id

      sig { params(model_id: Telnyx::VoiceCloneData::ModelID::OrSymbol).void }
      attr_writer :model_id

      # Name of the voice clone.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Voice synthesis provider used for this clone.
      sig { returns(T.nilable(Telnyx::VoiceCloneData::Provider::TaggedSymbol)) }
      attr_reader :provider

      sig { params(provider: Telnyx::VoiceCloneData::Provider::OrSymbol).void }
      attr_writer :provider

      # List of TTS model identifiers supported by this clone's provider.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :provider_supported_models

      sig { params(provider_supported_models: T::Array[String]).void }
      attr_writer :provider_supported_models

      # Provider-specific voice identifier used for TTS synthesis. May differ from the
      # clone UUID depending on the provider and model.
      sig { returns(T.nilable(String)) }
      attr_accessor :provider_voice_id

      # Identifies the resource type.
      sig do
        returns(T.nilable(Telnyx::VoiceCloneData::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::VoiceCloneData::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      # UUID of the source voice design. `null` for upload-based clones.
      sig { returns(T.nilable(String)) }
      attr_accessor :source_voice_design_id

      # Version of the source voice design used. `null` for upload-based clones.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :source_voice_design_version

      # Clone status. pending for Ultra clones while on-prem import is in progress,
      # active once ready, failed if verification timed out, expired if not kept alive.
      sig { returns(T.nilable(Telnyx::VoiceCloneData::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::VoiceCloneData::Status::OrSymbol).void }
      attr_writer :status

      # Timestamp when the voice clone was last updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A voice clone object.
      sig do
        params(
          id: String,
          created_at: Time,
          gender: T.nilable(Telnyx::VoiceCloneData::Gender::OrSymbol),
          label: T.nilable(String),
          language: T.nilable(String),
          model_id: Telnyx::VoiceCloneData::ModelID::OrSymbol,
          name: String,
          provider: Telnyx::VoiceCloneData::Provider::OrSymbol,
          provider_supported_models: T::Array[String],
          provider_voice_id: T.nilable(String),
          record_type: Telnyx::VoiceCloneData::RecordType::OrSymbol,
          source_voice_design_id: T.nilable(String),
          source_voice_design_version: T.nilable(Integer),
          status: Telnyx::VoiceCloneData::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the voice clone.
        id: nil,
        # Timestamp when the voice clone was created.
        created_at: nil,
        # Gender of the voice clone.
        gender: nil,
        # Voice style description. If not explicitly set on upload, falls back to the
        # source design's prompt text.
        label: nil,
        # ISO 639-1 language code of the voice clone.
        language: nil,
        # TTS model identifier for the voice clone.
        model_id: nil,
        # Name of the voice clone.
        name: nil,
        # Voice synthesis provider used for this clone.
        provider: nil,
        # List of TTS model identifiers supported by this clone's provider.
        provider_supported_models: nil,
        # Provider-specific voice identifier used for TTS synthesis. May differ from the
        # clone UUID depending on the provider and model.
        provider_voice_id: nil,
        # Identifies the resource type.
        record_type: nil,
        # UUID of the source voice design. `null` for upload-based clones.
        source_voice_design_id: nil,
        # Version of the source voice design used. `null` for upload-based clones.
        source_voice_design_version: nil,
        # Clone status. pending for Ultra clones while on-prem import is in progress,
        # active once ready, failed if verification timed out, expired if not kept alive.
        status: nil,
        # Timestamp when the voice clone was last updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            gender: T.nilable(Telnyx::VoiceCloneData::Gender::TaggedSymbol),
            label: T.nilable(String),
            language: T.nilable(String),
            model_id: Telnyx::VoiceCloneData::ModelID::TaggedSymbol,
            name: String,
            provider: Telnyx::VoiceCloneData::Provider::TaggedSymbol,
            provider_supported_models: T::Array[String],
            provider_voice_id: T.nilable(String),
            record_type: Telnyx::VoiceCloneData::RecordType::TaggedSymbol,
            source_voice_design_id: T.nilable(String),
            source_voice_design_version: T.nilable(Integer),
            status: Telnyx::VoiceCloneData::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # Gender of the voice clone.
      module Gender
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceCloneData::Gender) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE = T.let(:male, Telnyx::VoiceCloneData::Gender::TaggedSymbol)
        FEMALE = T.let(:female, Telnyx::VoiceCloneData::Gender::TaggedSymbol)
        NEUTRAL = T.let(:neutral, Telnyx::VoiceCloneData::Gender::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneData::Gender::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # TTS model identifier for the voice clone.
      module ModelID
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceCloneData::ModelID) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QWEN3_TTS =
          T.let(:Qwen3TTS, Telnyx::VoiceCloneData::ModelID::TaggedSymbol)
        ULTRA = T.let(:Ultra, Telnyx::VoiceCloneData::ModelID::TaggedSymbol)
        SPEECH_2_8_TURBO =
          T.let(
            :"speech-2.8-turbo",
            Telnyx::VoiceCloneData::ModelID::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneData::ModelID::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Voice synthesis provider used for this clone.
      module Provider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceCloneData::Provider) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELNYX = T.let(:telnyx, Telnyx::VoiceCloneData::Provider::TaggedSymbol)
        MINIMAX =
          T.let(:minimax, Telnyx::VoiceCloneData::Provider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneData::Provider::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Identifies the resource type.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceCloneData::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VOICE_CLONE =
          T.let(:voice_clone, Telnyx::VoiceCloneData::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneData::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Clone status. pending for Ultra clones while on-prem import is in progress,
      # active once ready, failed if verification timed out, expired if not kept alive.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceCloneData::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Telnyx::VoiceCloneData::Status::TaggedSymbol)
        PENDING = T.let(:pending, Telnyx::VoiceCloneData::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::VoiceCloneData::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, Telnyx::VoiceCloneData::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneData::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
