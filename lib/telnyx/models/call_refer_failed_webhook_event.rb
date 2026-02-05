# frozen_string_literal: true

module Telnyx
  module Models
    class CallReferFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallReferFailed, nil]
      optional :data, -> { Telnyx::CallReferFailed }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallReferFailed]
    end
  end
end
