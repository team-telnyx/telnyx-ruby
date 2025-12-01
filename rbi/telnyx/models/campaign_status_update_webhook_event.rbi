# typed: strong

module Telnyx
  module Models
    module CampaignStatusUpdateWebhookEvent
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::CampaignStatusUpdateEvent,
            Telnyx::CampaignSuspendedEvent
          )
        end

      sig do
        override.returns(
          T::Array[Telnyx::CampaignStatusUpdateWebhookEvent::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
