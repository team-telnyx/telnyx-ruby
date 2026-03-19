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

      # Name of the voice clone.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

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
          name: String,
          record_type: Telnyx::VoiceCloneData::RecordType::OrSymbol,
          source_voice_design_id: T.nilable(String),
          source_voice_design_version: T.nilable(Integer),
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
        # Name of the voice clone.
        name: nil,
        # Identifies the resource type.
        record_type: nil,
        # UUID of the source voice design. `null` for upload-based clones.
        source_voice_design_id: nil,
        # Version of the source voice design used. `null` for upload-based clones.
        source_voice_design_version: nil,
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
            name: String,
            record_type: Telnyx::VoiceCloneData::RecordType::TaggedSymbol,
            source_voice_design_id: T.nilable(String),
            source_voice_design_version: T.nilable(Integer),
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
    end
  end
end
