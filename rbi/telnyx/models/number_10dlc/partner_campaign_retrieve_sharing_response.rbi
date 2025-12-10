# typed: strong

module Telnyx
  module Models
    module Number10dlc
      PartnerCampaignRetrieveSharingResponse =
        T.let(
          Telnyx::Internal::Type::HashOf[Telnyx::CampaignSharingStatus],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
