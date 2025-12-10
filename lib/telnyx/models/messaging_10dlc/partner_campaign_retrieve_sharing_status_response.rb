# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @type [Telnyx::Internal::Type::Converter]
      PartnerCampaignRetrieveSharingStatusResponse =
        Telnyx::Internal::Type::HashOf[-> { Telnyx::Messaging10dlc::CampaignSharingStatus }]
    end
  end
end
