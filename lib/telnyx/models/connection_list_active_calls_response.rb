# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Connections#list_active_calls
    class ConnectionListActiveCallsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute call_control_id
      #   Unique identifier and token for controlling the call.
      #
      #   @return [String]
      required :call_control_id, String

      # @!attribute call_duration
      #   Indicates the duration of the call in seconds
      #
      #   @return [Integer]
      required :call_duration, Integer

      # @!attribute call_leg_id
      #   ID that is unique to the call and can be used to correlate webhook events
      #
      #   @return [String]
      required :call_leg_id, String

      # @!attribute call_session_id
      #   ID that is unique to the call session and can be used to correlate webhook
      #   events. Call session is a group of related call legs that logically belong to
      #   the same phone call, e.g. an inbound and outbound leg of a transferred call
      #
      #   @return [String]
      required :call_session_id, String

      # @!attribute client_state
      #   State received from a command.
      #
      #   @return [String]
      required :client_state, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::ConnectionListActiveCallsResponse::RecordType]
      required :record_type, enum: -> { Telnyx::Models::ConnectionListActiveCallsResponse::RecordType }

      # @!method initialize(call_control_id:, call_duration:, call_leg_id:, call_session_id:, client_state:, record_type:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConnectionListActiveCallsResponse} for more details.
      #
      #   @param call_control_id [String] Unique identifier and token for controlling the call.
      #
      #   @param call_duration [Integer] Indicates the duration of the call in seconds
      #
      #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events
      #
      #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
      #
      #   @param client_state [String] State received from a command.
      #
      #   @param record_type [Symbol, Telnyx::Models::ConnectionListActiveCallsResponse::RecordType]

      # @see Telnyx::Models::ConnectionListActiveCallsResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        CALL = :call

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
