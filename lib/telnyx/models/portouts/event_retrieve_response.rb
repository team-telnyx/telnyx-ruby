# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Events#retrieve
      class EventRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Portouts::WebhookPortoutStatusChanged, Telnyx::Models::Portouts::WebhookPortoutNewComment, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged, nil]
        optional :data, union: -> { Telnyx::Portouts::PortoutEvent }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Portouts::WebhookPortoutStatusChanged, Telnyx::Models::Portouts::WebhookPortoutNewComment, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged]
      end
    end
  end
end
