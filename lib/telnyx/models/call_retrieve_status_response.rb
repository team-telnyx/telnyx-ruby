# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Calls#retrieve_status
    class CallRetrieveStatusResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallRetrieveStatusResponse::Data, nil]
      optional :data, -> { Telnyx::Models::CallRetrieveStatusResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallRetrieveStatusResponse::Data]

      # @see Telnyx::Models::CallRetrieveStatusResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   Unique identifier and token for controlling the call.
        #
        #   @return [String]
        required :call_control_id, String

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

        # @!attribute is_alive
        #   Indicates whether the call is alive or not. For Dial command it will always be
        #   `false` (dialing is asynchronous).
        #
        #   @return [Boolean]
        required :is_alive, Telnyx::Internal::Type::Boolean

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType }

        # @!attribute call_duration
        #   Indicates the duration of the call in seconds
        #
        #   @return [Integer, nil]
        optional :call_duration, Integer

        # @!attribute client_state
        #   State received from a command.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute end_time
        #   ISO 8601 formatted date indicating when the call ended. Only present when the
        #   call is not alive
        #
        #   @return [String, nil]
        optional :end_time, String

        # @!attribute start_time
        #   ISO 8601 formatted date indicating when the call started
        #
        #   @return [String, nil]
        optional :start_time, String

        # @!method initialize(call_control_id:, call_leg_id:, call_session_id:, is_alive:, record_type:, call_duration: nil, client_state: nil, end_time: nil, start_time: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallRetrieveStatusResponse::Data} for more details.
        #
        #   @param call_control_id [String] Unique identifier and token for controlling the call.
        #
        #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events
        #
        #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
        #
        #   @param is_alive [Boolean] Indicates whether the call is alive or not. For Dial command it will always be `
        #
        #   @param record_type [Symbol, Telnyx::Models::CallRetrieveStatusResponse::Data::RecordType]
        #
        #   @param call_duration [Integer] Indicates the duration of the call in seconds
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param end_time [String] ISO 8601 formatted date indicating when the call ended. Only present when the ca
        #
        #   @param start_time [String] ISO 8601 formatted date indicating when the call started

        # @see Telnyx::Models::CallRetrieveStatusResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          CALL = :call

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
