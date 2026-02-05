# frozen_string_literal: true

module Telnyx
  module Models
    class CallForkStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallForkStarted, nil]
      optional :data, -> { Telnyx::CallForkStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallForkStarted]
    end
  end
end
