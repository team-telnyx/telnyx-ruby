# typed: strong

module Telnyx
  module Models
    module Rcs
      AgentRetrieveCarrierApprovalsResponse =
        T.let(
          Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
