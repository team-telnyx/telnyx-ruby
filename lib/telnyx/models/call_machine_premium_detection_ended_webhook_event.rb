# frozen_string_literal: true

module Telnyx
  module Models
    class CallMachinePremiumDetectionEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallMachinePremiumDetectionEnded, nil]
      optional :data, -> { Telnyx::CallMachinePremiumDetectionEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallMachinePremiumDetectionEnded]
    end
  end
end
