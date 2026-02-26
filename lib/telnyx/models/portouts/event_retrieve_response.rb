# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Events#retrieve
      class EventRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Portouts::WebhookPortoutStatusChanged, Telnyx::Models::Portouts::WebhookPortoutNewComment, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged, nil]
        optional :data, union: -> { Telnyx::Models::Portouts::EventRetrieveResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Portouts::WebhookPortoutStatusChanged, Telnyx::Models::Portouts::WebhookPortoutNewComment, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged]

        # @see Telnyx::Models::Portouts::EventRetrieveResponse#data
        module Data
          extend Telnyx::Internal::Type::Union

          discriminator :event_type

          variant -> { Telnyx::Portouts::WebhookPortoutStatusChanged }

          variant -> { Telnyx::Portouts::WebhookPortoutNewComment }

          variant -> { Telnyx::Portouts::WebhookPortoutFocDateChanged }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Portouts::WebhookPortoutStatusChanged, Telnyx::Models::Portouts::WebhookPortoutNewComment, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged)]
        end
      end
    end
  end
end
