# frozen_string_literal: true

module Telnyx
  module Models
    class DeliveryUpdateWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::OutboundMessage, nil]
      optional :data, -> { Telnyx::OutboundMessage }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::DeliveryUpdateWebhookEvent::Meta, nil]
      optional :meta, -> { Telnyx::DeliveryUpdateWebhookEvent::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Telnyx::Models::OutboundMessage]
      #   @param meta [Telnyx::Models::DeliveryUpdateWebhookEvent::Meta]

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
