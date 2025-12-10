# frozen_string_literal: true

module Telnyx
  module Models
    class CallStreamingStoppedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallStreamingStopped, nil]
      optional :data, -> { Telnyx::CallStreamingStopped }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallStreamingStopped]
    end
  end
end
