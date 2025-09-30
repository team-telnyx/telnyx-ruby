# typed: strong

module Telnyx
  module Models
    class ConferenceParticipantSpeakEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceParticipantSpeakEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the type of resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered.
        sig do
          returns(
            T.nilable(
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        sig do
          returns(
            T.nilable(
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::Payload
            )
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::EventType::OrSymbol,
            payload:
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::EventType::TaggedSymbol,
              payload:
                Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::RecordType::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONFERENCE_PARTICIPANT_SPEAK_ENDED =
            T.let(
              :"conference.participant.speak.ended",
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Payload < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Participant's call ID used to issue commands via Call Control API.
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

          # ISO 8601 datetime of when the event occurred.
          sig { returns(T.nilable(Time)) }
          attr_reader :occurred_at

          sig { params(occurred_at: Time).void }
          attr_writer :occurred_at

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              conference_id: String,
              connection_id: String,
              creator_call_session_id: String,
              occurred_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Participant's call ID used to issue commands via Call Control API.
            call_control_id: nil,
            # ID that is unique to the call and can be used to correlate webhook events.
            call_leg_id: nil,
            # ID that is unique to the call session and can be used to correlate webhook
            # events. Call session is a group of related call legs that logically belong to
            # the same phone call, e.g. an inbound and outbound leg of a transferred call.
            call_session_id: nil,
            # State received from a command.
            client_state: nil,
            # ID of the conference the text was spoken in.
            conference_id: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # ID that is unique to the call session that started the conference.
            creator_call_session_id: nil,
            # ISO 8601 datetime of when the event occurred.
            occurred_at: nil
          )
          end

          sig do
            override.returns(
              {
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                client_state: String,
                conference_id: String,
                connection_id: String,
                creator_call_session_id: String,
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
              T.all(
                Symbol,
                Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ConferenceParticipantSpeakEndedWebhookEvent::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
