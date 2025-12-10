# typed: strong

module Telnyx
  module Models
    module Number10dlc
      module Campaign
        OsrRetrieveAttributesResponse =
          T.let(
            Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
