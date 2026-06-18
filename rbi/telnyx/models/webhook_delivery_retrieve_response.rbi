# typed: strong

module Telnyx
  module Models
    class WebhookDeliveryRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WebhookDeliveryRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Record of all attempts to deliver a webhook.
      sig { returns(T.nilable(Telnyx::WebhookDelivery)) }
      attr_reader :data

      sig { params(data: Telnyx::WebhookDelivery::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::WebhookDelivery::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Record of all attempts to deliver a webhook.
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::WebhookDelivery }) }
      def to_hash
      end
    end
  end
end
