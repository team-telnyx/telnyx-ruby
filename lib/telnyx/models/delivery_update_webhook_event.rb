# frozen_string_literal: true

module Telnyx
  module Models
    class DeliveryUpdateWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DeliveryUpdateWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::DeliveryUpdateWebhookEvent::Data }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::DeliveryUpdateWebhookEvent::Meta, nil]
      optional :meta, -> { Telnyx::DeliveryUpdateWebhookEvent::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Telnyx::Models::DeliveryUpdateWebhookEvent::Data]
      #   @param meta [Telnyx::Models::DeliveryUpdateWebhookEvent::Meta]

      # @see Telnyx::Models::DeliveryUpdateWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::DeliveryUpdateWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::DeliveryUpdateWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::OutboundMessagePayload, nil]
        optional :payload, -> { Telnyx::OutboundMessagePayload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::DeliveryUpdateWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::DeliveryUpdateWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::DeliveryUpdateWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param payload [Telnyx::Models::OutboundMessagePayload]
        #
        #   @param record_type [Symbol, Telnyx::Models::DeliveryUpdateWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::DeliveryUpdateWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          MESSAGE_SENT = :"message.sent"
          MESSAGE_FINALIZED = :"message.finalized"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::DeliveryUpdateWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::DeliveryUpdateWebhookEvent#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute attempt
        #   Number of attempts to deliver the webhook event.
        #
        #   @return [Integer, nil]
        optional :attempt, Integer

        # @!attribute delivered_to
        #   The webhook URL the event was delivered to.
        #
        #   @return [String, nil]
        optional :delivered_to, String

        # @!method initialize(attempt: nil, delivered_to: nil)
        #   @param attempt [Integer] Number of attempts to deliver the webhook event.
        #
        #   @param delivered_to [String] The webhook URL the event was delivered to.
      end
    end
  end
end
