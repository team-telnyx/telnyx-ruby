# typed: strong

module Telnyx
  module Models
    class CallRetrieveStatusResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CallRetrieveStatusResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::CallRetrieveStatusResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::CallRetrieveStatusResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::CallRetrieveStatusResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::CallRetrieveStatusResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CallRetrieveStatusResponse::Data,
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

        # Indicates whether the call is alive or not. For Dial command it will always be
        # `false` (dialing is asynchronous).
        sig { returns(T::Boolean) }
        attr_accessor :is_alive

        sig do
          returns(
            Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # Indicates the duration of the call in seconds
        sig { returns(T.nilable(Integer)) }
        attr_reader :call_duration

        sig { params(call_duration: Integer).void }
        attr_writer :call_duration

        # State received from a command.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # ISO 8601 formatted date indicating when the call ended. Only present when the
        # call is not alive
        sig { returns(T.nilable(String)) }
        attr_reader :end_time

        sig { params(end_time: String).void }
        attr_writer :end_time

        # ISO 8601 formatted date indicating when the call started
        sig { returns(T.nilable(String)) }
        attr_reader :start_time

        sig { params(start_time: String).void }
        attr_writer :start_time

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            is_alive: T::Boolean,
            record_type:
              Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType::OrSymbol,
            call_duration: Integer,
            client_state: String,
            end_time: String,
            start_time: String
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
          # Indicates whether the call is alive or not. For Dial command it will always be
          # `false` (dialing is asynchronous).
          is_alive:,
          record_type:,
          # Indicates the duration of the call in seconds
          call_duration: nil,
          # State received from a command.
          client_state: nil,
          # ISO 8601 formatted date indicating when the call ended. Only present when the
          # call is not alive
          end_time: nil,
          # ISO 8601 formatted date indicating when the call started
          start_time: nil
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              is_alive: T::Boolean,
              record_type:
                Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType::TaggedSymbol,
              call_duration: Integer,
              client_state: String,
              end_time: String,
              start_time: String
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
                Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL =
            T.let(
              :call,
              Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType::TaggedSymbol
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
