# frozen_string_literal: true

module Telnyx
  module Models
    class CallSiprecStoppedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallSiprecStopped, nil]
      optional :data, -> { Telnyx::CallSiprecStopped }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallSiprecStopped]
    end
  end
end
