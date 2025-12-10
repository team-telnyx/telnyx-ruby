# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @type [Telnyx::Internal::Type::Converter]
      PartnerCampaignGetSharingStatusResponse =
        Telnyx::Internal::Type::HashOf[-> { Telnyx::CampaignSharingStatus }]
    end
  end
end
