# typed: strong

module Telnyx
  module Models
    class CallGatherEnded < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallGatherEnded, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(T.nilable(Telnyx::CallGatherEnded::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::CallGatherEnded::EventType::OrSymbol).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::CallGatherEnded::Payload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::CallGatherEnded::Payload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(T.nilable(Telnyx::CallGatherEnded::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::CallGatherEnded::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::CallGatherEnded::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::CallGatherEnded::Payload::OrHash,
          record_type: Telnyx::CallGatherEnded::RecordType::OrSymbol
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
            event_type: Telnyx::CallGatherEnded::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::CallGatherEnded::Payload,
            record_type: Telnyx::CallGatherEnded::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallGatherEnded::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_GATHER_ENDED =
          T.let(
            :"call.gather.ended",
            Telnyx::CallGatherEnded::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallGatherEnded::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CallGatherEnded::Payload, Telnyx::Internal::AnyHash)
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

        # The received DTMF digit or symbol.
        sig { returns(T.nilable(String)) }
        attr_reader :digits

        sig { params(digits: String).void }
        attr_writer :digits

        # Number or SIP URI placing the call.
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # Reflects how command ended.
        sig do
          returns(
            T.nilable(Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::CallGatherEnded::Payload::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Destination number or SIP URI of the call.
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            client_state: String,
            connection_id: String,
            digits: String,
            from: String,
            status: Telnyx::CallGatherEnded::Payload::Status::OrSymbol,
            to: String
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
          # The received DTMF digit or symbol.
          digits: nil,
          # Number or SIP URI placing the call.
          from: nil,
          # Reflects how command ended.
          status: nil,
          # Destination number or SIP URI of the call.
          to: nil
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
              digits: String,
              from: String,
              status: Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol,
              to: String
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
              T.all(Symbol, Telnyx::CallGatherEnded::Payload::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VALID =
            T.let(
              :valid,
              Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol
            )
          INVALID =
            T.let(
              :invalid,
              Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol
            )
          CALL_HANGUP =
            T.let(
              :call_hangup,
              Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol
            )
          CANCELLED_AMD =
            T.let(
              :cancelled_amd,
              Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol
            )
          TIMEOUT =
            T.let(
              :timeout,
              Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::CallGatherEnded::Payload::Status::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, Telnyx::CallGatherEnded::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT = T.let(:event, Telnyx::CallGatherEnded::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallGatherEnded::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
