# typed: strong

module Telnyx
  module Models
    class RecordingResponseData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RecordingResponseData, Telnyx::Internal::AnyHash)
        end

      # Uniquely identifies the recording.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Unique identifier and token for controlling the call.
      sig { returns(T.nilable(String)) }
      attr_reader :call_control_id

      sig { params(call_control_id: String).void }
      attr_writer :call_control_id

      # ID unique to the call leg (used to correlate webhook events).
      sig { returns(T.nilable(String)) }
      attr_reader :call_leg_id

      sig { params(call_leg_id: String).void }
      attr_writer :call_leg_id

      # ID that is unique to the call session and can be used to correlate webhook
      # events. Call session is a group of related call legs that logically belong to
      # the same phone call, e.g. an inbound and outbound leg of a transferred call.
      sig { returns(T.nilable(String)) }
      attr_reader :call_session_id

      sig { params(call_session_id: String).void }
      attr_writer :call_session_id

      # When `dual`, the final audio file has the first leg on channel A, and the rest
      # on channel B.
      sig do
        returns(
          T.nilable(Telnyx::RecordingResponseData::Channels::TaggedSymbol)
        )
      end
      attr_reader :channels

      sig do
        params(channels: Telnyx::RecordingResponseData::Channels::OrSymbol).void
      end
      attr_writer :channels

      # Uniquely identifies the conference.
      sig { returns(T.nilable(String)) }
      attr_reader :conference_id

      sig { params(conference_id: String).void }
      attr_writer :conference_id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Links to download the recording files.
      sig { returns(T.nilable(Telnyx::RecordingResponseData::DownloadURLs)) }
      attr_reader :download_urls

      sig do
        params(
          download_urls: Telnyx::RecordingResponseData::DownloadURLs::OrHash
        ).void
      end
      attr_writer :download_urls

      # The duration of the recording in milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :duration_millis

      sig { params(duration_millis: Integer).void }
      attr_writer :duration_millis

      sig do
        returns(
          T.nilable(Telnyx::RecordingResponseData::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::RecordingResponseData::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # ISO 8601 formatted date of when the recording ended.
      sig { returns(T.nilable(String)) }
      attr_reader :recording_ended_at

      sig { params(recording_ended_at: String).void }
      attr_writer :recording_ended_at

      # ISO 8601 formatted date of when the recording started.
      sig { returns(T.nilable(String)) }
      attr_reader :recording_started_at

      sig { params(recording_started_at: String).void }
      attr_writer :recording_started_at

      # The kind of event that led to this recording being created.
      sig do
        returns(T.nilable(Telnyx::RecordingResponseData::Source::TaggedSymbol))
      end
      attr_reader :source

      sig do
        params(source: Telnyx::RecordingResponseData::Source::OrSymbol).void
      end
      attr_writer :source

      # The status of the recording. Only `completed` recordings are currently
      # supported.
      sig do
        returns(T.nilable(Telnyx::RecordingResponseData::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::RecordingResponseData::Status::OrSymbol).void
      end
      attr_writer :status

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          call_control_id: String,
          call_leg_id: String,
          call_session_id: String,
          channels: Telnyx::RecordingResponseData::Channels::OrSymbol,
          conference_id: String,
          created_at: String,
          download_urls: Telnyx::RecordingResponseData::DownloadURLs::OrHash,
          duration_millis: Integer,
          record_type: Telnyx::RecordingResponseData::RecordType::OrSymbol,
          recording_ended_at: String,
          recording_started_at: String,
          source: Telnyx::RecordingResponseData::Source::OrSymbol,
          status: Telnyx::RecordingResponseData::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the recording.
        id: nil,
        # Unique identifier and token for controlling the call.
        call_control_id: nil,
        # ID unique to the call leg (used to correlate webhook events).
        call_leg_id: nil,
        # ID that is unique to the call session and can be used to correlate webhook
        # events. Call session is a group of related call legs that logically belong to
        # the same phone call, e.g. an inbound and outbound leg of a transferred call.
        call_session_id: nil,
        # When `dual`, the final audio file has the first leg on channel A, and the rest
        # on channel B.
        channels: nil,
        # Uniquely identifies the conference.
        conference_id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # Links to download the recording files.
        download_urls: nil,
        # The duration of the recording in milliseconds.
        duration_millis: nil,
        record_type: nil,
        # ISO 8601 formatted date of when the recording ended.
        recording_ended_at: nil,
        # ISO 8601 formatted date of when the recording started.
        recording_started_at: nil,
        # The kind of event that led to this recording being created.
        source: nil,
        # The status of the recording. Only `completed` recordings are currently
        # supported.
        status: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            channels: Telnyx::RecordingResponseData::Channels::TaggedSymbol,
            conference_id: String,
            created_at: String,
            download_urls: Telnyx::RecordingResponseData::DownloadURLs,
            duration_millis: Integer,
            record_type:
              Telnyx::RecordingResponseData::RecordType::TaggedSymbol,
            recording_ended_at: String,
            recording_started_at: String,
            source: Telnyx::RecordingResponseData::Source::TaggedSymbol,
            status: Telnyx::RecordingResponseData::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      # When `dual`, the final audio file has the first leg on channel A, and the rest
      # on channel B.
      module Channels
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::RecordingResponseData::Channels)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SINGLE =
          T.let(:single, Telnyx::RecordingResponseData::Channels::TaggedSymbol)
        DUAL =
          T.let(:dual, Telnyx::RecordingResponseData::Channels::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::RecordingResponseData::Channels::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class DownloadURLs < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::RecordingResponseData::DownloadURLs,
              Telnyx::Internal::AnyHash
            )
          end

        # Link to download the recording in mp3 format.
        sig { returns(T.nilable(String)) }
        attr_reader :mp3

        sig { params(mp3: String).void }
        attr_writer :mp3

        # Link to download the recording in wav format.
        sig { returns(T.nilable(String)) }
        attr_reader :wav

        sig { params(wav: String).void }
        attr_writer :wav

        # Links to download the recording files.
        sig { params(mp3: String, wav: String).returns(T.attached_class) }
        def self.new(
          # Link to download the recording in mp3 format.
          mp3: nil,
          # Link to download the recording in wav format.
          wav: nil
        )
        end

        sig { override.returns({ mp3: String, wav: String }) }
        def to_hash
        end
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::RecordingResponseData::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECORDING =
          T.let(
            :recording,
            Telnyx::RecordingResponseData::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::RecordingResponseData::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The kind of event that led to this recording being created.
      module Source
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RecordingResponseData::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONFERENCE =
          T.let(
            :conference,
            Telnyx::RecordingResponseData::Source::TaggedSymbol
          )
        CALL = T.let(:call, Telnyx::RecordingResponseData::Source::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::RecordingResponseData::Source::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The status of the recording. Only `completed` recordings are currently
      # supported.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RecordingResponseData::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(:completed, Telnyx::RecordingResponseData::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::RecordingResponseData::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
