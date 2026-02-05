# typed: strong

module Telnyx
  module Models
    class CallPlaybackStarted < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallPlaybackStarted, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(T.nilable(Telnyx::CallPlaybackStarted::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(
          event_type: Telnyx::CallPlaybackStarted::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::CallPlaybackStarted::Payload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::CallPlaybackStarted::Payload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(Telnyx::CallPlaybackStarted::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::CallPlaybackStarted::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::CallPlaybackStarted::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::CallPlaybackStarted::Payload::OrHash,
          record_type: Telnyx::CallPlaybackStarted::RecordType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # The type of event being delivered.
        event_type: nil,
        # ISO 8601 datetime of when the event occurred.
        occurred_at: nil,
        payload: nil,
        # Identifies the type of the resource.
        record_type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_type: Telnyx::CallPlaybackStarted::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::CallPlaybackStarted::Payload,
            record_type: Telnyx::CallPlaybackStarted::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallPlaybackStarted::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_PLAYBACK_STARTED =
          T.let(
            :"call.playback.started",
            Telnyx::CallPlaybackStarted::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallPlaybackStarted::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallPlaybackStarted::Payload,
              Telnyx::Internal::AnyHash
            )
          end

        # Call ID used to issue commands via Call Control API.
        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

        # ID that is unique to the call and can be used to correlate webhook events.
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

        # State received from a command.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Call Control App ID (formerly Telnyx connection ID) used in the call.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

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

        # Whether the audio is going to be played in overlay mode or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overlay

        sig { params(overlay: T::Boolean).void }
        attr_writer :overlay

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            client_state: String,
            connection_id: String,
            media_name: String,
            media_url: String,
            overlay: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Call ID used to issue commands via Call Control API.
          call_control_id: nil,
          # ID that is unique to the call and can be used to correlate webhook events.
          call_leg_id: nil,
          # ID that is unique to the call session and can be used to correlate webhook
          # events. Call session is a group of related call legs that logically belong to
          # the same phone call, e.g. an inbound and outbound leg of a transferred call.
          call_session_id: nil,
          # State received from a command.
          client_state: nil,
          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          connection_id: nil,
          # The name of the audio media file being played back, if media_name has been used
          # to start.
          media_name: nil,
          # The audio URL being played back, if audio_url has been used to start.
          media_url: nil,
          # Whether the audio is going to be played in overlay mode or not.
          overlay: nil
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              media_name: String,
              media_url: String,
              overlay: T::Boolean
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
            T.all(Symbol, Telnyx::CallPlaybackStarted::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(:event, Telnyx::CallPlaybackStarted::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallPlaybackStarted::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
