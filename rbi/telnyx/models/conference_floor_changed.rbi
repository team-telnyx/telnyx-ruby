# typed: strong

module Telnyx
  module Models
    class ConferenceFloorChanged < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ConferenceFloorChanged, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(
          T.nilable(Telnyx::ConferenceFloorChanged::EventType::TaggedSymbol)
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type: Telnyx::ConferenceFloorChanged::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      sig { returns(T.nilable(Telnyx::ConferenceFloorChanged::Payload)) }
      attr_reader :payload

      sig do
        params(payload: Telnyx::ConferenceFloorChanged::Payload::OrHash).void
      end
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(Telnyx::ConferenceFloorChanged::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::ConferenceFloorChanged::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::ConferenceFloorChanged::EventType::OrSymbol,
          payload: Telnyx::ConferenceFloorChanged::Payload::OrHash,
          record_type: Telnyx::ConferenceFloorChanged::RecordType::OrSymbol
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
            event_type: Telnyx::ConferenceFloorChanged::EventType::TaggedSymbol,
            payload: Telnyx::ConferenceFloorChanged::Payload,
            record_type:
              Telnyx::ConferenceFloorChanged::RecordType::TaggedSymbol
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
            T.all(Symbol, Telnyx::ConferenceFloorChanged::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONFERENCE_FLOOR_CHANGED =
          T.let(
            :"conference.floor.changed",
            Telnyx::ConferenceFloorChanged::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ConferenceFloorChanged::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ConferenceFloorChanged::Payload,
              Telnyx::Internal::AnyHash
            )
          end

        # Call Control ID of the new speaker.
        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

        # Call Leg ID of the new speaker.
        sig { returns(T.nilable(String)) }
        attr_reader :call_leg_id

        sig { params(call_leg_id: String).void }
        attr_writer :call_leg_id

        # Call Session ID of the new speaker.
        sig { returns(T.nilable(String)) }
        attr_reader :call_session_id

        sig { params(call_session_id: String).void }
        attr_writer :call_session_id

        # State received from a command.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Conference ID that had a speaker change event.
        sig { returns(T.nilable(String)) }
        attr_reader :conference_id

        sig { params(conference_id: String).void }
        attr_writer :conference_id

        # Call Control App ID (formerly Telnyx connection ID) used in the call.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

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
            occurred_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Call Control ID of the new speaker.
          call_control_id: nil,
          # Call Leg ID of the new speaker.
          call_leg_id: nil,
          # Call Session ID of the new speaker.
          call_session_id: nil,
          # State received from a command.
          client_state: nil,
          # Conference ID that had a speaker change event.
          conference_id: nil,
          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          connection_id: nil,
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
            T.all(Symbol, Telnyx::ConferenceFloorChanged::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(
            :event,
            Telnyx::ConferenceFloorChanged::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ConferenceFloorChanged::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
