# typed: strong

module Telnyx
  module Models
    CampaignAcceptSharingResponse =
      T.let(T.anything, Telnyx::Internal::Type::Converter)
  end
end
