# typed: strong

module Telnyx
  module Models
    module Campaign
      OsrGetAttributesResponse =
        T.let(
          Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
