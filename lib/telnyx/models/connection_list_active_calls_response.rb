# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Connections#list_active_calls
    class ConnectionListActiveCallsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::ConnectionListActiveCallsResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ConnectionListActiveCallsResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::ConnectionListActiveCallsResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::ConnectionListActiveCallsResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::ConnectionListActiveCallsResponse::Data>]
      #   @param meta [Telnyx::Models::ConnectionListActiveCallsResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType }

        # @!method initialize(call_control_id:, call_duration:, call_leg_id:, call_session_id:, client_state:, record_type:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ConnectionListActiveCallsResponse::Data} for more details.
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
        #   @param record_type [Symbol, Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType]

        # @see Telnyx::Models::ConnectionListActiveCallsResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          CALL = :call

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::ConnectionListActiveCallsResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute cursors
        #
        #   @return [Telnyx::Models::ConnectionListActiveCallsResponse::Meta::Cursors, nil]
        optional :cursors, -> { Telnyx::Models::ConnectionListActiveCallsResponse::Meta::Cursors }

        # @!attribute next_
        #   Path to next page.
        #
        #   @return [String, nil]
        optional :next_, String, api_name: :next

        # @!attribute previous
        #   Path to previous page.
        #
        #   @return [String, nil]
        optional :previous, String

        # @!attribute total_items
        #
        #   @return [Integer, nil]
        optional :total_items, Integer

        # @!method initialize(cursors: nil, next_: nil, previous: nil, total_items: nil)
        #   @param cursors [Telnyx::Models::ConnectionListActiveCallsResponse::Meta::Cursors]
        #
        #   @param next_ [String] Path to next page.
        #
        #   @param previous [String] Path to previous page.
        #
        #   @param total_items [Integer]

        # @see Telnyx::Models::ConnectionListActiveCallsResponse::Meta#cursors
        class Cursors < Telnyx::Internal::Type::BaseModel
          # @!attribute after
          #   Opaque identifier of next page.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #   Opaque identifier of previous page.
          #
          #   @return [String, nil]
          optional :before, String

          # @!method initialize(after: nil, before: nil)
          #   @param after [String] Opaque identifier of next page.
          #
          #   @param before [String] Opaque identifier of previous page.
        end
      end
    end
  end
end
