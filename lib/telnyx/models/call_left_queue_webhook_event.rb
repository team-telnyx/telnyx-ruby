# frozen_string_literal: true

module Telnyx
  module Models
    class CallLeftQueueWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallLeftQueue, nil]
      optional :data, -> { Telnyx::CallLeftQueue }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallLeftQueue]
    end
  end
end
