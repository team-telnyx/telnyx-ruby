# frozen_string_literal: true

module Telnyx
  module Models
    class CallMachinePremiumGreetingEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallMachinePremiumGreetingEnded, nil]
      optional :data, -> { Telnyx::CallMachinePremiumGreetingEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallMachinePremiumGreetingEnded]
    end
  end
end
