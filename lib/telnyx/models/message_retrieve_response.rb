# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#retrieve
    class MessageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessagingOutboundMessagePayload, Telnyx::Models::MessagingInboundMessagePayload, nil]
      optional :data, union: -> { Telnyx::Models::MessageRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessagingOutboundMessagePayload, Telnyx::Models::MessagingInboundMessagePayload]

      # @see Telnyx::Models::MessageRetrieveResponse#data
      module Data
        extend Telnyx::Internal::Type::Union

        discriminator :direction

        variant :outbound, -> { Telnyx::MessagingOutboundMessagePayload }

        variant :inbound, -> { Telnyx::MessagingInboundMessagePayload }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::MessagingOutboundMessagePayload, Telnyx::Models::MessagingInboundMessagePayload)]
      end
    end
  end
end
