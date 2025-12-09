# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallEvents#list
    class CallEventListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute call_leg_id
      #   Uniquely identifies an individual call leg.
      #
      #   @return [String]
      required :call_leg_id, String

      # @!attribute call_session_id
      #   Uniquely identifies the call control session. A session may include multiple
      #   call leg events.
      #
      #   @return [String]
      required :call_session_id, String

      # @!attribute event_timestamp
      #   Event timestamp
      #
      #   @return [String]
      required :event_timestamp, String

      # @!attribute metadata
      #   Event metadata, which includes raw event, and extra information based on event
      #   type
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute name
      #   Event name
      #
      #   @return [String]
      required :name, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::CallEventListResponse::RecordType]
      required :record_type, enum: -> { Telnyx::Models::CallEventListResponse::RecordType }

      # @!attribute type
      #   Event type
      #
      #   @return [Symbol, Telnyx::Models::CallEventListResponse::Type]
      required :type, enum: -> { Telnyx::Models::CallEventListResponse::Type }

      # @!method initialize(call_leg_id:, call_session_id:, event_timestamp:, metadata:, name:, record_type:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallEventListResponse} for more details.
      #
      #   @param call_leg_id [String] Uniquely identifies an individual call leg.
      #
      #   @param call_session_id [String] Uniquely identifies the call control session. A session may include multiple cal
      #
      #   @param event_timestamp [String] Event timestamp
      #
      #   @param metadata [Hash{Symbol=>Object}] Event metadata, which includes raw event, and extra information based on event t
      #
      #   @param name [String] Event name
      #
      #   @param record_type [Symbol, Telnyx::Models::CallEventListResponse::RecordType]
      #
      #   @param type [Symbol, Telnyx::Models::CallEventListResponse::Type] Event type

      # @see Telnyx::Models::CallEventListResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        CALL_EVENT = :call_event

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Event type
      #
      # @see Telnyx::Models::CallEventListResponse#type
      module Type
        extend Telnyx::Internal::Type::Enum

        COMMAND = :command
        WEBHOOK = :webhook

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
