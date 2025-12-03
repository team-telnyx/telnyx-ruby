# typed: strong

module Telnyx
  module Models
    class StreamingStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::StreamingStartedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::StreamingStartedWebhookEvent::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::StreamingStartedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::StreamingStartedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::StreamingStartedWebhookEvent::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::StreamingStartedWebhookEvent::Data,
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
              Telnyx::StreamingStartedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::StreamingStartedWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          returns(
            T.nilable(Telnyx::StreamingStartedWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::StreamingStartedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::StreamingStartedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::StreamingStartedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::StreamingStartedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::StreamingStartedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::StreamingStartedWebhookEvent::Data::RecordType::OrSymbol
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
              event_type:
                Telnyx::StreamingStartedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::StreamingStartedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::StreamingStartedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::StreamingStartedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STREAMING_STARTED =
            T.let(
              :"streaming.started",
              Telnyx::StreamingStartedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::StreamingStartedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::StreamingStartedWebhookEvent::Data::Payload,
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

          # Destination WebSocket address where the stream is going to be delivered.
          sig { returns(T.nilable(String)) }
          attr_reader :stream_url

          sig { params(stream_url: String).void }
          attr_writer :stream_url

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              stream_url: String
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
            # Destination WebSocket address where the stream is going to be delivered.
            stream_url: nil
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
                stream_url: String
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
                Telnyx::StreamingStartedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::StreamingStartedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::StreamingStartedWebhookEvent::Data::RecordType::TaggedSymbol
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
