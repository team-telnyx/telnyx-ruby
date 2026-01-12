# frozen_string_literal: true

module Telnyx
  module Models
    class CallStreamingStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallStreamingStarted, nil]
      optional :data, -> { Telnyx::CallStreamingStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallStreamingStarted]
    end
  end
end
