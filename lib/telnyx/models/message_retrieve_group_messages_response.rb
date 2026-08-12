# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#retrieve_group_messages
    class MessageRetrieveGroupMessagesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingOutboundMessagePayload>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingOutboundMessagePayload] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::MessagingOutboundMessagePayload>]
    end
  end
end
