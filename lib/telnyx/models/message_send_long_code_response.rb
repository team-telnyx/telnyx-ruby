# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_long_code
    class MessageSendLongCodeResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::OutboundMessagePayload, nil]
      optional :data, -> { Telnyx::OutboundMessagePayload }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::OutboundMessagePayload]
    end
  end
end
