# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @type [Telnyx::Internal::Type::Converter]
      AgentRetrieveCarrierApprovalsResponse =
        Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Rcs::CarrierApprovalResponse }]
    end
  end
end
