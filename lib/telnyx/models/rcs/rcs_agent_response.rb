# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class RcsAgentResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Rcs::RcsAgent, nil]
        optional :data, -> { Telnyx::Rcs::RcsAgent }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Rcs::RcsAgent]
      end
    end

    RcsAgentResponse = Rcs::RcsAgentResponse
  end
end
