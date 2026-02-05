# frozen_string_literal: true

module Telnyx
  module Models
    class CallHangupWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallHangup, nil]
      optional :data, -> { Telnyx::CallHangup }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallHangup]
    end
  end
end
