# typed: strong

module Telnyx
  module Models
    class DeliveryUpdateWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DeliveryUpdateWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::OutboundMessage)) }
      attr_reader :data

      sig { params(data: Telnyx::OutboundMessage::OrHash).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::DeliveryUpdateWebhookEvent::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::DeliveryUpdateWebhookEvent::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: Telnyx::OutboundMessage::OrHash,
          meta: Telnyx::DeliveryUpdateWebhookEvent::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: Telnyx::OutboundMessage,
            meta: Telnyx::DeliveryUpdateWebhookEvent::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DeliveryUpdateWebhookEvent::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Number of attempts to deliver the webhook event.
        sig { returns(T.nilable(Integer)) }
        attr_reader :attempt

        sig { params(attempt: Integer).void }
        attr_writer :attempt

        # The webhook URL the event was delivered to.
        sig { returns(T.nilable(String)) }
        attr_reader :delivered_to

        sig { params(delivered_to: String).void }
        attr_writer :delivered_to

        sig do
          params(attempt: Integer, delivered_to: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Number of attempts to deliver the webhook event.
          attempt: nil,
          # The webhook URL the event was delivered to.
          delivered_to: nil
        )
        end

        sig { override.returns({ attempt: Integer, delivered_to: String }) }
        def to_hash
        end
      end
    end
  end
end
