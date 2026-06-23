# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WebhookDeliveries#retrieve
    class WebhookDeliveryRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Record of all attempts to deliver a webhook.
      #
      #   @return [Telnyx::Models::WebhookDelivery, nil]
      optional :data, -> { Telnyx::WebhookDelivery }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WebhookDelivery] Record of all attempts to deliver a webhook.
    end
  end
end
