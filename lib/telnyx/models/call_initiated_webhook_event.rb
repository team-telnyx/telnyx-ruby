# frozen_string_literal: true

module Telnyx
  module Models
    class CallInitiatedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallInitiated, nil]
      optional :data, -> { Telnyx::CallInitiated }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallInitiated]
    end
  end
end
