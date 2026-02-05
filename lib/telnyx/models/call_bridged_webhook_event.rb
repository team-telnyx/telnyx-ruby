# frozen_string_literal: true

module Telnyx
  module Models
    class CallBridgedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallBridged, nil]
      optional :data, -> { Telnyx::CallBridged }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallBridged]
    end
  end
end
