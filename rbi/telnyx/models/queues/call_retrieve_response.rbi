# typed: strong

module Telnyx
  module Models
    module Queues
      class CallRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Queues::CallRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::Models::Queues::CallRetrieveResponse::Data))
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Queues::CallRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Queues::CallRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Queues::CallRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Queues::CallRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique identifier and token for controlling the call.
          sig { returns(String) }
          attr_accessor :call_control_id

          # ID that is unique to the call and can be used to correlate webhook events
          sig { returns(String) }
          attr_accessor :call_leg_id

          # ID that is unique to the call session and can be used to correlate webhook
          # events. Call session is a group of related call legs that logically belong to
          # the same phone call, e.g. an inbound and outbound leg of a transferred call
          sig { returns(String) }
          attr_accessor :call_session_id

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(String) }
          attr_accessor :connection_id

          # ISO 8601 formatted date of when the call was put in the queue
          sig { returns(String) }
          attr_accessor :enqueued_at

          # Number or SIP URI placing the call.
          sig { returns(String) }
          attr_accessor :from

          # Unique identifier of the queue the call is in.
          sig { returns(String) }
          attr_accessor :queue_id

          # Current position of the call in the queue
          sig { returns(Integer) }
          attr_accessor :queue_position

          sig do
            returns(
              Telnyx::Models::Queues::CallRetrieveResponse::Data::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # Destination number or SIP URI of the call.
          sig { returns(String) }
          attr_accessor :to

          # The time the call has been waiting in the queue, given in seconds
          sig { returns(Integer) }
          attr_accessor :wait_time_secs

          # Indicates whether the call is still active in the queue.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_alive

          sig { params(is_alive: T::Boolean).void }
          attr_writer :is_alive

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              connection_id: String,
              enqueued_at: String,
              from: String,
              queue_id: String,
              queue_position: Integer,
              record_type:
                Telnyx::Models::Queues::CallRetrieveResponse::Data::RecordType::OrSymbol,
              to: String,
              wait_time_secs: Integer,
              is_alive: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier and token for controlling the call.
            call_control_id:,
            # ID that is unique to the call and can be used to correlate webhook events
            call_leg_id:,
            # ID that is unique to the call session and can be used to correlate webhook
            # events. Call session is a group of related call legs that logically belong to
            # the same phone call, e.g. an inbound and outbound leg of a transferred call
            call_session_id:,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id:,
            # ISO 8601 formatted date of when the call was put in the queue
            enqueued_at:,
            # Number or SIP URI placing the call.
            from:,
            # Unique identifier of the queue the call is in.
            queue_id:,
            # Current position of the call in the queue
            queue_position:,
            record_type:,
            # Destination number or SIP URI of the call.
            to:,
            # The time the call has been waiting in the queue, given in seconds
            wait_time_secs:,
            # Indicates whether the call is still active in the queue.
            is_alive: nil
          )
          end

          sig do
            override.returns(
              {
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                connection_id: String,
                enqueued_at: String,
                from: String,
                queue_id: String,
                queue_position: Integer,
                record_type:
                  Telnyx::Models::Queues::CallRetrieveResponse::Data::RecordType::TaggedSymbol,
                to: String,
                wait_time_secs: Integer,
                is_alive: T::Boolean
              }
            )
          end
          def to_hash
          end

          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Queues::CallRetrieveResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUEUE_CALL =
              T.let(
                :queue_call,
                Telnyx::Models::Queues::CallRetrieveResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Queues::CallRetrieveResponse::Data::RecordType::TaggedSymbol
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
end
