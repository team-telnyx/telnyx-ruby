# frozen_string_literal: true

module Telnyx
  module Models
    class CallAIGatherMessageHistoryUpdatedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallAIGatherMessageHistoryUpdated, nil]
      optional :data, -> { Telnyx::CallAIGatherMessageHistoryUpdated }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallAIGatherMessageHistoryUpdated]
    end
  end
end
