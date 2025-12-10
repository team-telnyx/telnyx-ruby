# typed: strong

module Telnyx
  module Models
    module Number10dlc
      PartnerCampaignGetSharingStatusResponse =
        T.let(
          Telnyx::Internal::Type::HashOf[Telnyx::CampaignSharingStatus],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
