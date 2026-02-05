# frozen_string_literal: true

module Telnyx
  module Models
    class CallSiprecStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallSiprecStarted, nil]
      optional :data, -> { Telnyx::CallSiprecStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallSiprecStarted]
    end
  end
end
