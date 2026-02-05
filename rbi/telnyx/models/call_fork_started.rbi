# typed: strong

module Telnyx
  module Models
    class CallForkStarted < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallForkStarted, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(T.nilable(Telnyx::CallForkStarted::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::CallForkStarted::EventType::OrSymbol).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::CallForkStarted::Payload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::CallForkStarted::Payload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(T.nilable(Telnyx::CallForkStarted::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::CallForkStarted::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::CallForkStarted::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::CallForkStarted::Payload::OrHash,
          record_type: Telnyx::CallForkStarted::RecordType::OrSymbol
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
            event_type: Telnyx::CallForkStarted::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::CallForkStarted::Payload,
            record_type: Telnyx::CallForkStarted::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallForkStarted::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_FORK_STARTED =
          T.let(
            :"call.fork.started",
            Telnyx::CallForkStarted::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallForkStarted::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CallForkStarted::Payload, Telnyx::Internal::AnyHash)
          end

        # Unique ID for controlling the call.
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

        # Type of media streamed. It can be either 'raw' or 'decrypted'.
        sig do
          returns(
            T.nilable(
              Telnyx::CallForkStarted::Payload::StreamType::TaggedSymbol
            )
          )
        end
        attr_reader :stream_type

        sig do
          params(
            stream_type: Telnyx::CallForkStarted::Payload::StreamType::OrSymbol
          ).void
        end
        attr_writer :stream_type

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            client_state: String,
            connection_id: String,
            stream_type: Telnyx::CallForkStarted::Payload::StreamType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique ID for controlling the call.
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
          # Type of media streamed. It can be either 'raw' or 'decrypted'.
          stream_type: nil
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
              stream_type:
                Telnyx::CallForkStarted::Payload::StreamType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Type of media streamed. It can be either 'raw' or 'decrypted'.
        module StreamType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::CallForkStarted::Payload::StreamType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DECRYPTED =
            T.let(
              :decrypted,
              Telnyx::CallForkStarted::Payload::StreamType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallForkStarted::Payload::StreamType::TaggedSymbol
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
          T.type_alias { T.all(Symbol, Telnyx::CallForkStarted::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT = T.let(:event, Telnyx::CallForkStarted::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallForkStarted::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
