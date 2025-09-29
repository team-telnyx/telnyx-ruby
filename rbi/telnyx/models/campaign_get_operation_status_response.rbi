# typed: strong

module Telnyx
  module Models
    CampaignGetOperationStatusResponse =
      T.let(T.anything, Telnyx::Internal::Type::Converter)
  end
end
