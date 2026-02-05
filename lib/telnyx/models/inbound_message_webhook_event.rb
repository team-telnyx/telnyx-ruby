# frozen_string_literal: true

module Telnyx
  module Models
    class InboundMessageWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::InboundMessage, nil]
      optional :data, -> { Telnyx::InboundMessage }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::InboundMessage]
    end
  end
end
