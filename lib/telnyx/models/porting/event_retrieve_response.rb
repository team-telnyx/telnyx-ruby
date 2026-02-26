# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Events#retrieve
      class EventRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Porting::PortingEventDeletedPayload, Telnyx::Models::Porting::PortingEventMessagingChangedPayload, Telnyx::Models::Porting::PortingEventStatusChangedEvent, Telnyx::Models::Porting::PortingEventNewCommentEvent, Telnyx::Models::Porting::PortingEventSplitEvent, Telnyx::Models::Porting::PortingEventWithoutWebhook, nil]
        optional :data, union: -> { Telnyx::Models::Porting::EventRetrieveResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Porting::PortingEventDeletedPayload, Telnyx::Models::Porting::PortingEventMessagingChangedPayload, Telnyx::Models::Porting::PortingEventStatusChangedEvent, Telnyx::Models::Porting::PortingEventNewCommentEvent, Telnyx::Models::Porting::PortingEventSplitEvent, Telnyx::Models::Porting::PortingEventWithoutWebhook]

        # @see Telnyx::Models::Porting::EventRetrieveResponse#data
        module Data
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
end
