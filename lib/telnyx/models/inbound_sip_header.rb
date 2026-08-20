# frozen_string_literal: true

module Telnyx
  module Models
    class InboundSipHeader < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the header received from the SIP INVITE.
      #
      #   @return [Symbol, Telnyx::Models::InboundSipHeader::Name]
      required :name, enum: -> { Telnyx::InboundSipHeader::Name }

      # @!attribute value
      #   The value of the header.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(name:, value:)
      #   @param name [Symbol, Telnyx::Models::InboundSipHeader::Name] The name of the header received from the SIP INVITE.
      #
      #   @param value [String] The value of the header.

      # The name of the header received from the SIP INVITE.
      #
      # @see Telnyx::Models::InboundSipHeader#name
      module Name
        extend Telnyx::Internal::Type::Enum

        USER_TO_USER = :"User-to-User"
        DIVERSION = :Diversion

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
