# frozen_string_literal: true

module Telnyx
  module Models
    class CallAIGatherPartialResultsWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallAIGatherPartialResults, nil]
      optional :data, -> { Telnyx::CallAIGatherPartialResults }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallAIGatherPartialResults]
    end
  end
end
