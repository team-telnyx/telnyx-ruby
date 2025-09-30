# typed: strong

module Telnyx
  module Models
    RequirementGroupListResponse =
      T.let(
        Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroup],
        Telnyx::Internal::Type::Converter
      )
  end
end
