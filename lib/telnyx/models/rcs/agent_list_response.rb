# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @type [Telnyx::Internal::Type::Converter]
      AgentListResponse = Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Rcs::AgentResponse }]
    end
  end
end
