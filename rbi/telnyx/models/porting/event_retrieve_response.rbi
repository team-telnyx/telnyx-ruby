# typed: strong

module Telnyx
  module Models
    module Porting
      class EventRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Porting::EventRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Porting::PortingEvent::Variants)) }
        attr_reader :data

        sig do
          params(
            data:
              T.any(
                Telnyx::Porting::PortingEventDeletedPayload::OrHash,
                Telnyx::Porting::PortingEventMessagingChangedPayload::OrHash,
                Telnyx::Porting::PortingEventStatusChangedEvent::OrHash,
                Telnyx::Porting::PortingEventNewCommentEvent::OrHash,
                Telnyx::Porting::PortingEventSplitEvent::OrHash,
                Telnyx::Porting::PortingEventWithoutWebhook::OrHash
              )
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T.any(
                Telnyx::Porting::PortingEventDeletedPayload::OrHash,
                Telnyx::Porting::PortingEventMessagingChangedPayload::OrHash,
                Telnyx::Porting::PortingEventStatusChangedEvent::OrHash,
                Telnyx::Porting::PortingEventNewCommentEvent::OrHash,
                Telnyx::Porting::PortingEventSplitEvent::OrHash,
                Telnyx::Porting::PortingEventWithoutWebhook::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::Porting::PortingEvent::Variants })
        end
        def to_hash
        end
      end
    end
  end
end
