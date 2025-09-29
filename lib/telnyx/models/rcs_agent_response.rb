# frozen_string_literal: true

module Telnyx
  module Models
    class RcsAgentResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::RcsAgent, nil]
      optional :data, -> { Telnyx::RcsAgent }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::RcsAgent]
    end
  end
end
