# frozen_string_literal: true

module Telnyx
  module Models
    class CallForkStoppedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallForkStopped, nil]
      optional :data, -> { Telnyx::CallForkStopped }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallForkStopped]
    end
  end
end
