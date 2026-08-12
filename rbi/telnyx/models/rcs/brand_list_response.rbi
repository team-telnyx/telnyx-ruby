# typed: strong

module Telnyx
  module Models
    module Rcs
      BrandListResponse =
        T.let(
          Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::BrandResponse],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
