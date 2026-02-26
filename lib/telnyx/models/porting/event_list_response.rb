# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Events#list
      module EventListResponse
        extend Telnyx::Internal::Type::Union

        discriminator :event_type

        variant -> { Telnyx::Porting::PortingEventDeletedPayload }

        variant -> { Telnyx::Porting::PortingEventMessagingChangedPayload }

        variant -> { Telnyx::Porting::PortingEventStatusChangedEvent }

        variant -> { Telnyx::Porting::PortingEventNewCommentEvent }

        variant -> { Telnyx::Porting::PortingEventSplitEvent }

        variant -> { Telnyx::Porting::PortingEventWithoutWebhook }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Porting::PortingEventDeletedPayload, Telnyx::Models::Porting::PortingEventMessagingChangedPayload, Telnyx::Models::Porting::PortingEventStatusChangedEvent, Telnyx::Models::Porting::PortingEventNewCommentEvent, Telnyx::Models::Porting::PortingEventSplitEvent, Telnyx::Models::Porting::PortingEventWithoutWebhook)]
      end
    end
  end
end
