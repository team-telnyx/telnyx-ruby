# typed: strong

module Telnyx
  module Models
    class ConferencePlaybackEnded < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ConferencePlaybackEnded, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(
          T.nilable(Telnyx::ConferencePlaybackEnded::EventType::TaggedSymbol)
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type: Telnyx::ConferencePlaybackEnded::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      sig { returns(T.nilable(Telnyx::ConferencePlaybackEnded::Payload)) }
      attr_reader :payload

      sig do
        params(payload: Telnyx::ConferencePlaybackEnded::Payload::OrHash).void
      end
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(Telnyx::ConferencePlaybackEnded::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::ConferencePlaybackEnded::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::ConferencePlaybackEnded::EventType::OrSymbol,
          payload: Telnyx::ConferencePlaybackEnded::Payload::OrHash,
          record_type: Telnyx::ConferencePlaybackEnded::RecordType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # The type of event being delivered.
        event_type: nil,
        payload: nil,
        # Identifies the type of the resource.
        record_type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_type:
              Telnyx::ConferencePlaybackEnded::EventType::TaggedSymbol,
            payload: Telnyx::ConferencePlaybackEnded::Payload,
            record_type:
              Telnyx::ConferencePlaybackEnded::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ConferencePlaybackEnded::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONFERENCE_PLAYBACK_ENDED =
          T.let(
            :"conference.playback.ended",
            Telnyx::ConferencePlaybackEnded::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ConferencePlaybackEnded::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ConferencePlaybackEnded::Payload,
              Telnyx::Internal::AnyHash
            )
          end

        # ID of the conference the text was spoken in.
        sig { returns(T.nilable(String)) }
        attr_reader :conference_id

        sig { params(conference_id: String).void }
        attr_writer :conference_id

        # Call Control App ID (formerly Telnyx connection ID) used in the call.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # ID that is unique to the call session that started the conference.
        sig { returns(T.nilable(String)) }
        attr_reader :creator_call_session_id

        sig { params(creator_call_session_id: String).void }
        attr_writer :creator_call_session_id

        # The name of the audio media file being played back, if media_name has been used
        # to start.
        sig { returns(T.nilable(String)) }
        attr_reader :media_name

        sig { params(media_name: String).void }
        attr_writer :media_name

        # The audio URL being played back, if audio_url has been used to start.
        sig { returns(T.nilable(String)) }
        attr_reader :media_url

        sig { params(media_url: String).void }
        attr_writer :media_url

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          params(
            conference_id: String,
            connection_id: String,
            creator_call_session_id: String,
            media_name: String,
            media_url: String,
            occurred_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the conference the text was spoken in.
          conference_id: nil,
          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          connection_id: nil,
          # ID that is unique to the call session that started the conference.
          creator_call_session_id: nil,
          # The name of the audio media file being played back, if media_name has been used
          # to start.
          media_name: nil,
          # The audio URL being played back, if audio_url has been used to start.
          media_url: nil,
          # ISO 8601 datetime of when the event occurred.
          occurred_at: nil
        )
        end

        sig do
          override.returns(
            {
              conference_id: String,
              connection_id: String,
              creator_call_session_id: String,
              media_name: String,
              media_url: String,
              occurred_at: Time
            }
          )
        end
        def to_hash
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ConferencePlaybackEnded::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(
            :event,
            Telnyx::ConferencePlaybackEnded::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ConferencePlaybackEnded::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
