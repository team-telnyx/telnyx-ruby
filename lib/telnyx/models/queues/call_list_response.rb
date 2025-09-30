# frozen_string_literal: true

module Telnyx
  module Models
    module Queues
      # @see Telnyx::Resources::Queues::Calls#list
      class CallListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Queues::CallListResponse::Data>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Queues::CallListResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Queues::CallListResponse::Data>]
        #   @param meta [Telnyx::Models::PaginationMeta]

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

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String]
          required :connection_id, String

          # @!attribute enqueued_at
          #   ISO 8601 formatted date of when the call was put in the queue
          #
          #   @return [String]
          required :enqueued_at, String

          # @!attribute from
          #   Number or SIP URI placing the call.
          #
          #   @return [String]
          required :from, String

          # @!attribute queue_id
          #   Unique identifier of the queue the call is in.
          #
          #   @return [String]
          required :queue_id, String

          # @!attribute queue_position
          #   Current position of the call in the queue
          #
          #   @return [Integer]
          required :queue_position, Integer

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::Queues::CallListResponse::Data::RecordType]
          required :record_type, enum: -> { Telnyx::Models::Queues::CallListResponse::Data::RecordType }

          # @!attribute to
          #   Destination number or SIP URI of the call.
          #
          #   @return [String]
          required :to, String

          # @!attribute wait_time_secs
          #   The time the call has been waiting in the queue, given in seconds
          #
          #   @return [Integer]
          required :wait_time_secs, Integer

          # @!method initialize(call_control_id:, call_leg_id:, call_session_id:, connection_id:, enqueued_at:, from:, queue_id:, queue_position:, record_type:, to:, wait_time_secs:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Queues::CallListResponse::Data} for more details.
          #
          #   @param call_control_id [String] Unique identifier and token for controlling the call.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param enqueued_at [String] ISO 8601 formatted date of when the call was put in the queue
          #
          #   @param from [String] Number or SIP URI placing the call.
          #
          #   @param queue_id [String] Unique identifier of the queue the call is in.
          #
          #   @param queue_position [Integer] Current position of the call in the queue
          #
          #   @param record_type [Symbol, Telnyx::Models::Queues::CallListResponse::Data::RecordType]
          #
          #   @param to [String] Destination number or SIP URI of the call.
          #
          #   @param wait_time_secs [Integer] The time the call has been waiting in the queue, given in seconds

          # @see Telnyx::Models::Queues::CallListResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            QUEUE_CALL = :queue_call

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
