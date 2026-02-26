# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Events#list
      module EventListResponse
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
