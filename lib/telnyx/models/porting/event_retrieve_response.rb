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

          variant :"porting_order.deleted", -> { Telnyx::Porting::PortingEventDeletedPayload }

          variant :"porting_order.messaging_changed", -> { Telnyx::Porting::PortingEventMessagingChangedPayload }

          variant :"porting_order.status_changed", -> { Telnyx::Porting::PortingEventStatusChangedEvent }

          variant :"porting_order.new_comment", -> { Telnyx::Porting::PortingEventNewCommentEvent }

          variant :"porting_order.split", -> { Telnyx::Porting::PortingEventSplitEvent }

          variant -> { Telnyx::Porting::PortingEventWithoutWebhook }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Porting::PortingEventDeletedPayload, Telnyx::Models::Porting::PortingEventMessagingChangedPayload, Telnyx::Models::Porting::PortingEventStatusChangedEvent, Telnyx::Models::Porting::PortingEventNewCommentEvent, Telnyx::Models::Porting::PortingEventSplitEvent, Telnyx::Models::Porting::PortingEventWithoutWebhook)]
        end
      end
    end
  end
end
