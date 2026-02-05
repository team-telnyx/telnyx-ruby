# typed: strong

module Telnyx
  module Models
    class CallRecordingError < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallRecordingError, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(T.nilable(Telnyx::CallRecordingError::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::CallRecordingError::EventType::OrSymbol).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::CallRecordingError::Payload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::CallRecordingError::Payload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(T.nilable(Telnyx::CallRecordingError::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::CallRecordingError::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::CallRecordingError::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::CallRecordingError::Payload::OrHash,
          record_type: Telnyx::CallRecordingError::RecordType::OrSymbol
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
            event_type: Telnyx::CallRecordingError::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::CallRecordingError::Payload,
            record_type: Telnyx::CallRecordingError::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallRecordingError::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_RECORDING_ERROR =
          T.let(
            :"call.recording.error",
            Telnyx::CallRecordingError::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallRecordingError::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallRecordingError::Payload,
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

        # Indication that there was a problem recording the call.
        sig do
          returns(
            T.nilable(Telnyx::CallRecordingError::Payload::Reason::TaggedSymbol)
          )
        end
        attr_reader :reason

        sig do
          params(
            reason: Telnyx::CallRecordingError::Payload::Reason::OrSymbol
          ).void
        end
        attr_writer :reason

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            client_state: String,
            connection_id: String,
            reason: Telnyx::CallRecordingError::Payload::Reason::OrSymbol
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
          # Indication that there was a problem recording the call.
          reason: nil
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
              reason: Telnyx::CallRecordingError::Payload::Reason::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Indication that there was a problem recording the call.
        module Reason
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::CallRecordingError::Payload::Reason)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FAILED_TO_AUTHORIZE_WITH_STORAGE_USING_CUSTOM_CREDENTIALS =
            T.let(
              :"Failed to authorize with storage using custom credentials",
              Telnyx::CallRecordingError::Payload::Reason::TaggedSymbol
            )
          INVALID_CREDENTIALS_JSON =
            T.let(
              :"Invalid credentials json",
              Telnyx::CallRecordingError::Payload::Reason::TaggedSymbol
            )
          UNSUPPORTED_BACKEND =
            T.let(
              :"Unsupported backend",
              Telnyx::CallRecordingError::Payload::Reason::TaggedSymbol
            )
          INTERNAL_SERVER_ERROR =
            T.let(
              :"Internal server error",
              Telnyx::CallRecordingError::Payload::Reason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallRecordingError::Payload::Reason::TaggedSymbol
              ]
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
          T.type_alias { T.all(Symbol, Telnyx::CallRecordingError::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(:event, Telnyx::CallRecordingError::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallRecordingError::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
