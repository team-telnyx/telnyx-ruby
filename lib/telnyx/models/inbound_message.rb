# frozen_string_literal: true

module Telnyx
  module Models
    class InboundMessage < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::InboundMessage::EventType, nil]
      optional :event_type, enum: -> { Telnyx::InboundMessage::EventType }

      # @!attribute occurred_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::InboundMessagePayload, nil]
      optional :payload, -> { Telnyx::InboundMessagePayload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::InboundMessage::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::InboundMessage::RecordType }

      # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::InboundMessage::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param payload [Telnyx::Models::InboundMessagePayload]
      #
      #   @param record_type [Symbol, Telnyx::Models::InboundMessage::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::InboundMessage#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        MESSAGE_RECEIVED = :"message.received"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::InboundMessage#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
