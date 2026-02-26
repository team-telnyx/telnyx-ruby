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

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Porting::EventRetrieveResponse::Data::Variants
            )
          )
        end
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
          override.returns(
            {
              data:
                Telnyx::Models::Porting::EventRetrieveResponse::Data::Variants
            }
          )
        end
        def to_hash
        end

        module Data
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
            override.returns(
              T::Array[
                Telnyx::Models::Porting::EventRetrieveResponse::Data::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
