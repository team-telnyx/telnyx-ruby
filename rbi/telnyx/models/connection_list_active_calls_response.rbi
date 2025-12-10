# typed: strong

module Telnyx
  module Models
    class ConnectionListActiveCallsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConnectionListActiveCallsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique identifier and token for controlling the call.
      sig { returns(String) }
      attr_accessor :call_control_id

      # Indicates the duration of the call in seconds
      sig { returns(Integer) }
      attr_accessor :call_duration

      # ID that is unique to the call and can be used to correlate webhook events
      sig { returns(String) }
      attr_accessor :call_leg_id

      # ID that is unique to the call session and can be used to correlate webhook
      # events. Call session is a group of related call legs that logically belong to
      # the same phone call, e.g. an inbound and outbound leg of a transferred call
      sig { returns(String) }
      attr_accessor :call_session_id

      # State received from a command.
      sig { returns(String) }
      attr_accessor :client_state

      sig do
        returns(
          Telnyx::Models::ConnectionListActiveCallsResponse::RecordType::TaggedSymbol
        )
      end
      attr_accessor :record_type

      sig do
        params(
          call_control_id: String,
          call_duration: Integer,
          call_leg_id: String,
          call_session_id: String,
          client_state: String,
          record_type:
            Telnyx::Models::ConnectionListActiveCallsResponse::RecordType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier and token for controlling the call.
        call_control_id:,
        # Indicates the duration of the call in seconds
        call_duration:,
        # ID that is unique to the call and can be used to correlate webhook events
        call_leg_id:,
        # ID that is unique to the call session and can be used to correlate webhook
        # events. Call session is a group of related call legs that logically belong to
        # the same phone call, e.g. an inbound and outbound leg of a transferred call
        call_session_id:,
        # State received from a command.
        client_state:,
        record_type:
      )
      end

      sig do
        override.returns(
          {
            call_control_id: String,
            call_duration: Integer,
            call_leg_id: String,
            call_session_id: String,
            client_state: String,
            record_type:
              Telnyx::Models::ConnectionListActiveCallsResponse::RecordType::TaggedSymbol
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
              Telnyx::Models::ConnectionListActiveCallsResponse::RecordType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL =
          T.let(
            :call,
            Telnyx::Models::ConnectionListActiveCallsResponse::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::ConnectionListActiveCallsResponse::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
