# frozen_string_literal: true

module Telnyx
  module Models
    # @type [Telnyx::Internal::Type::Converter]
    PartnerCampaignRetrieveSharingStatusResponse =
      Telnyx::Internal::Type::HashOf[-> { Telnyx::CampaignSharingStatus }]
  end
end
