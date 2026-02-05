# typed: strong

module Telnyx
  module Models
    class CallPlaybackEnded < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallPlaybackEnded, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(T.nilable(Telnyx::CallPlaybackEnded::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::CallPlaybackEnded::EventType::OrSymbol).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::CallPlaybackEnded::Payload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::CallPlaybackEnded::Payload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(T.nilable(Telnyx::CallPlaybackEnded::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::CallPlaybackEnded::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::CallPlaybackEnded::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::CallPlaybackEnded::Payload::OrHash,
          record_type: Telnyx::CallPlaybackEnded::RecordType::OrSymbol
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
            event_type: Telnyx::CallPlaybackEnded::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::CallPlaybackEnded::Payload,
            record_type: Telnyx::CallPlaybackEnded::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallPlaybackEnded::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_PLAYBACK_ENDED =
          T.let(
            :"call.playback.ended",
            Telnyx::CallPlaybackEnded::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallPlaybackEnded::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CallPlaybackEnded::Payload, Telnyx::Internal::AnyHash)
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

        # Whether the stopped audio was in overlay mode or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overlay

        sig { params(overlay: T::Boolean).void }
        attr_writer :overlay

        # Reflects how command ended.
        sig do
          returns(
            T.nilable(Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::CallPlaybackEnded::Payload::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Provides details in case of failure.
        sig { returns(T.nilable(String)) }
        attr_reader :status_detail

        sig { params(status_detail: String).void }
        attr_writer :status_detail

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            client_state: String,
            connection_id: String,
            media_name: String,
            media_url: String,
            overlay: T::Boolean,
            status: Telnyx::CallPlaybackEnded::Payload::Status::OrSymbol,
            status_detail: String
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
          # Whether the stopped audio was in overlay mode or not.
          overlay: nil,
          # Reflects how command ended.
          status: nil,
          # Provides details in case of failure.
          status_detail: nil
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
              overlay: T::Boolean,
              status: Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol,
              status_detail: String
            }
          )
        end
        def to_hash
        end

        # Reflects how command ended.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::CallPlaybackEnded::Payload::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILE_NOT_FOUND =
            T.let(
              :file_not_found,
              Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol
            )
          CALL_HANGUP =
            T.let(
              :call_hangup,
              Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol
            )
          CANCELLED_AMD =
            T.let(
              :cancelled_amd,
              Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::CallPlaybackEnded::Payload::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallPlaybackEnded::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(:event, Telnyx::CallPlaybackEnded::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallPlaybackEnded::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
