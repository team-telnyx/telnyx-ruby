# frozen_string_literal: true

module Telnyx
  module Models
    class CallSpeakStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallSpeakStarted, nil]
      optional :data, -> { Telnyx::CallSpeakStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallSpeakStarted]
    end
  end
end
