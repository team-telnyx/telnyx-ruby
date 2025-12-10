# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#retrieve
    class MessageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::OutboundMessagePayload, Telnyx::Models::InboundMessagePayload, nil]
      optional :data, union: -> { Telnyx::Models::MessageRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::OutboundMessagePayload, Telnyx::Models::InboundMessagePayload]

      # @see Telnyx::Models::MessageRetrieveResponse#data
      module Data
        extend Telnyx::Internal::Type::Union

        discriminator :direction

        variant :outbound, -> { Telnyx::OutboundMessagePayload }

        variant :inbound, -> { Telnyx::InboundMessagePayload }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::OutboundMessagePayload, Telnyx::Models::InboundMessagePayload)]
      end
    end
  end
end
