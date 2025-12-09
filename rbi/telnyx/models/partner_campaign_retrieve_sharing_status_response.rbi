# typed: strong

module Telnyx
  module Models
    PartnerCampaignRetrieveSharingStatusResponse =
      T.let(
        Telnyx::Internal::Type::HashOf[
          Telnyx::Number10dlc::CampaignSharingStatus
        ],
        Telnyx::Internal::Type::Converter
      )
  end
end
