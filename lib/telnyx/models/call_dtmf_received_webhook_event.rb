# frozen_string_literal: true

module Telnyx
  module Models
    class CallDtmfReceivedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallDtmfReceived, nil]
      optional :data, -> { Telnyx::CallDtmfReceived }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallDtmfReceived]
    end
  end
end
