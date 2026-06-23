# typed: strong

module Telnyx
  module Models
    PortingEvent = Porting::PortingEvent

    module Porting
      module PortingEvent
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Porting::PortingEventDeletedPayload,
              Telnyx::Porting::PortingEventMessagingChangedPayload,
              Telnyx::Porting::PortingEventStatusChangedEvent,
              Telnyx::Porting::PortingEventNewCommentEvent,
              Telnyx::Porting::PortingEventSplitEvent,
              Telnyx::Porting::PortingEventWithoutWebhook
            )
          end

        sig do
          override.returns(T::Array[Telnyx::Porting::PortingEvent::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
