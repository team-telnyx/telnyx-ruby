# typed: strong

module Telnyx
  module Models
    class CallLeftQueueWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallLeftQueueWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallLeftQueueWebhookEvent::Data)) }
      attr_reader :data

      sig { params(data: Telnyx::CallLeftQueueWebhookEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallLeftQueueWebhookEvent::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::CallLeftQueueWebhookEvent::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallLeftQueueWebhookEvent::Data,
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
              Telnyx::CallLeftQueueWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallLeftQueueWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          returns(T.nilable(Telnyx::CallLeftQueueWebhookEvent::Data::Payload))
        end
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::CallLeftQueueWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallLeftQueueWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallLeftQueueWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallLeftQueueWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload: Telnyx::CallLeftQueueWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallLeftQueueWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::CallLeftQueueWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallLeftQueueWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallLeftQueueWebhookEvent::Data::RecordType::TaggedSymbol
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
              T.all(Symbol, Telnyx::CallLeftQueueWebhookEvent::Data::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_DEQUEUED =
            T.let(
              :"call.dequeued",
              Telnyx::CallLeftQueueWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallLeftQueueWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload,
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

          # The name of the queue
          sig { returns(T.nilable(String)) }
          attr_reader :queue

          sig { params(queue: String).void }
          attr_writer :queue

          # Last position of the call in the queue.
          sig { returns(T.nilable(Integer)) }
          attr_reader :queue_position

          sig { params(queue_position: Integer).void }
          attr_writer :queue_position

          # The reason for leaving the queue
          sig do
            returns(
              T.nilable(
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )
            )
          end
          attr_reader :reason

          sig do
            params(
              reason:
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::OrSymbol
            ).void
          end
          attr_writer :reason

          # Time call spent in the queue in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :wait_time_secs

          sig { params(wait_time_secs: Integer).void }
          attr_writer :wait_time_secs

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              queue: String,
              queue_position: Integer,
              reason:
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::OrSymbol,
              wait_time_secs: Integer
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
            # The name of the queue
            queue: nil,
            # Last position of the call in the queue.
            queue_position: nil,
            # The reason for leaving the queue
            reason: nil,
            # Time call spent in the queue in seconds.
            wait_time_secs: nil
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
                queue: String,
                queue_position: Integer,
                reason:
                  Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::TaggedSymbol,
                wait_time_secs: Integer
              }
            )
          end
          def to_hash
          end

          # The reason for leaving the queue
          module Reason
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BRIDGED =
              T.let(
                :bridged,
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )
            BRIDGING_IN_PROCESS =
              T.let(
                :"bridging-in-process",
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )
            HANGUP =
              T.let(
                :hangup,
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )
            LEAVE =
              T.let(
                :leave,
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )
            TIMEOUT =
              T.let(
                :timeout,
                Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallLeftQueueWebhookEvent::Data::Payload::Reason::TaggedSymbol
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
            T.type_alias do
              T.all(Symbol, Telnyx::CallLeftQueueWebhookEvent::Data::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallLeftQueueWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallLeftQueueWebhookEvent::Data::RecordType::TaggedSymbol
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
