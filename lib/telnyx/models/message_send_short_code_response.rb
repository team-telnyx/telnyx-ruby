# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_short_code
    class MessageSendShortCodeResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessagingOutboundMessagePayload, nil]
      optional :data, -> { Telnyx::MessagingOutboundMessagePayload }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessagingOutboundMessagePayload]
    end
  end
end
