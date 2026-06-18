# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Events#retrieve
      class EventRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Porting::PortingEventDeletedPayload, Telnyx::Models::Porting::PortingEventMessagingChangedPayload, Telnyx::Models::Porting::PortingEventStatusChangedEvent, Telnyx::Models::Porting::PortingEventNewCommentEvent, Telnyx::Models::Porting::PortingEventSplitEvent, Telnyx::Models::Porting::PortingEventWithoutWebhook, nil]
        optional :data, union: -> { Telnyx::Porting::PortingEvent }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Porting::PortingEventDeletedPayload, Telnyx::Models::Porting::PortingEventMessagingChangedPayload, Telnyx::Models::Porting::PortingEventStatusChangedEvent, Telnyx::Models::Porting::PortingEventNewCommentEvent, Telnyx::Models::Porting::PortingEventSplitEvent, Telnyx::Models::Porting::PortingEventWithoutWebhook]
      end
    end
  end
end
