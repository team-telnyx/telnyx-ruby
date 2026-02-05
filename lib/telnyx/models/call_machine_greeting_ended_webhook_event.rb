# frozen_string_literal: true

module Telnyx
  module Models
    class CallMachineGreetingEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallMachineGreetingEnded, nil]
      optional :data, -> { Telnyx::CallMachineGreetingEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallMachineGreetingEnded]
    end
  end
end
