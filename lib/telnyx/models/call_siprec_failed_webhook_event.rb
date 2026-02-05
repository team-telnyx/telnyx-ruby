# frozen_string_literal: true

module Telnyx
  module Models
    class CallSiprecFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallSiprecFailed, nil]
      optional :data, -> { Telnyx::CallSiprecFailed }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallSiprecFailed]
    end
  end
end
