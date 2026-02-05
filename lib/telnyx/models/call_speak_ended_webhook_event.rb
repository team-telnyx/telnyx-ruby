# frozen_string_literal: true

module Telnyx
  module Models
    class CallSpeakEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallSpeakEnded, nil]
      optional :data, -> { Telnyx::CallSpeakEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallSpeakEnded]
    end
  end
end
