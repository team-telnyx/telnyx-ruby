# frozen_string_literal: true

module Telnyx
  module Models
    class InboundMessageWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::InboundMessageWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::InboundMessageWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::InboundMessageWebhookEvent::Data]

      # @see Telnyx::Models::InboundMessageWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::EventType }

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
        #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param payload [Telnyx::Models::InboundMessagePayload]
        #
        #   @param record_type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::InboundMessageWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          MESSAGE_RECEIVED = :"message.received"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::InboundMessageWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
