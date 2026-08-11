# typed: strong

module Telnyx
  module Models
    module Rcs
      AgentListResponse =
        T.let(
          Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::AgentResponse],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
