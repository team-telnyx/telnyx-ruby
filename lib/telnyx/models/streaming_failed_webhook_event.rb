# frozen_string_literal: true

module Telnyx
  module Models
    class StreamingFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallStreamingFailed, nil]
      optional :data, -> { Telnyx::CallStreamingFailed }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallStreamingFailed]
    end
  end
end
