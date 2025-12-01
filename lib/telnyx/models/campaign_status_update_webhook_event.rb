# frozen_string_literal: true

module Telnyx
  module Models
    module CampaignStatusUpdateWebhookEvent
      extend Telnyx::Internal::Type::Union

      variant -> { Telnyx::CampaignStatusUpdateEvent }

      variant -> { Telnyx::CampaignSuspendedEvent }

      # @!method self.variants
      #   @return [Array(Telnyx::Models::CampaignStatusUpdateEvent, Telnyx::Models::CampaignSuspendedEvent)]
    end
  end
end
