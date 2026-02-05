# frozen_string_literal: true

module Telnyx
  module Models
    class CallReferStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallReferStarted, nil]
      optional :data, -> { Telnyx::CallReferStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallReferStarted]
    end
  end
end
