# typed: strong

module Telnyx
  module Models
    PartnerCampaignRetrieveSharingStatusResponse =
      T.let(
        Telnyx::Internal::Type::HashOf[Telnyx::CampaignSharingStatus],
        Telnyx::Internal::Type::Converter
      )
  end
end
