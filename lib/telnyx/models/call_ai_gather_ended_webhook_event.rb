# frozen_string_literal: true

module Telnyx
  module Models
    class CallAIGatherEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallAIGatherEnded, nil]
      optional :data, -> { Telnyx::CallAIGatherEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallAIGatherEnded]
    end
  end
end
