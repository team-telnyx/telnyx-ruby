# typed: strong

module Telnyx
  module Models
    class RecordingTranscription < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RecordingTranscription, Telnyx::Internal::AnyHash)
        end

      # Uniquely identifies the recording transcription.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # The duration of the recording transcription in milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :duration_millis

      sig { params(duration_millis: Integer).void }
      attr_writer :duration_millis

      sig do
        returns(
          T.nilable(Telnyx::RecordingTranscription::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::RecordingTranscription::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # Uniquely identifies the recording associated with this transcription.
      sig { returns(T.nilable(String)) }
      attr_reader :recording_id

      sig { params(recording_id: String).void }
      attr_writer :recording_id

      # The status of the recording transcription. Only `completed` has transcription
      # text available.
      sig do
        returns(T.nilable(Telnyx::RecordingTranscription::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::RecordingTranscription::Status::OrSymbol).void
      end
      attr_writer :status

      # The recording's transcribed text.
      sig { returns(T.nilable(String)) }
      attr_reader :transcription_text

      sig { params(transcription_text: String).void }
      attr_writer :transcription_text

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: String,
          duration_millis: Integer,
          record_type: Telnyx::RecordingTranscription::RecordType::OrSymbol,
          recording_id: String,
          status: Telnyx::RecordingTranscription::Status::OrSymbol,
          transcription_text: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the recording transcription.
        id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # The duration of the recording transcription in milliseconds.
        duration_millis: nil,
        record_type: nil,
        # Uniquely identifies the recording associated with this transcription.
        recording_id: nil,
        # The status of the recording transcription. Only `completed` has transcription
        # text available.
        status: nil,
        # The recording's transcribed text.
        transcription_text: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            duration_millis: Integer,
            record_type:
              Telnyx::RecordingTranscription::RecordType::TaggedSymbol,
            recording_id: String,
            status: Telnyx::RecordingTranscription::Status::TaggedSymbol,
            transcription_text: String,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::RecordingTranscription::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECORDING_TRANSCRIPTION =
          T.let(
            :recording_transcription,
            Telnyx::RecordingTranscription::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::RecordingTranscription::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The status of the recording transcription. Only `completed` has transcription
      # text available.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RecordingTranscription::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IN_PROGRESS =
          T.let(
            :"in-progress",
            Telnyx::RecordingTranscription::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Telnyx::RecordingTranscription::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::RecordingTranscription::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
