# frozen_string_literal: true

module Telnyx
  module Models
    class InboundMessageWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessagingInboundMessage, nil]
      optional :data, -> { Telnyx::MessagingInboundMessage }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessagingInboundMessage]
    end
  end
end
