# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      PartnerCampaignRetrieveSharingStatusResponse =
        T.let(
          Telnyx::Internal::Type::HashOf[
            Telnyx::Messaging10dlc::CampaignSharingStatus
          ],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
