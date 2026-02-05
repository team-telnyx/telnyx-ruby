# frozen_string_literal: true

module Telnyx
  module Models
    class CallMachineDetectionEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallMachineDetectionEnded, nil]
      optional :data, -> { Telnyx::CallMachineDetectionEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallMachineDetectionEnded]
    end
  end
end
