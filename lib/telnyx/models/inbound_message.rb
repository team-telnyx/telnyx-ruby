# frozen_string_literal: true

module Telnyx
  module Models
    class InboundMessage < Telnyx::Models::EmailInboxes::ThreadMessage
      # @!attribute direction
      #
      #   @return [Symbol, Telnyx::Models::InboundMessage::Direction, nil]
      optional :direction, enum: -> { Telnyx::InboundMessage::Direction }

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::InboundMessage::Status, nil]
      optional :status, enum: -> { Telnyx::InboundMessage::Status }

      # @!method initialize(direction: nil, status: nil)
      #   @param direction [Symbol, Telnyx::Models::InboundMessage::Direction]
      #   @param status [Symbol, Telnyx::Models::InboundMessage::Status]

      module Direction
        extend Telnyx::Internal::Type::Enum

        INBOUND = :inbound

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        RECEIVED = :received

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
