# frozen_string_literal: true

module Telnyx
  module Models
    class CallEnqueuedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallEnqueued, nil]
      optional :data, -> { Telnyx::CallEnqueued }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallEnqueued]
    end
  end
end
