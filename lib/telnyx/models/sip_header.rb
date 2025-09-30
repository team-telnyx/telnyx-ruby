# frozen_string_literal: true

module Telnyx
  module Models
    class SipHeader < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the header to add.
      #
      #   @return [Symbol, Telnyx::Models::SipHeader::Name]
      required :name, enum: -> { Telnyx::SipHeader::Name }

      # @!attribute value
      #   The value of the header.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(name:, value:)
      #   @param name [Symbol, Telnyx::Models::SipHeader::Name] The name of the header to add.
      #
      #   @param value [String] The value of the header.

      # The name of the header to add.
      #
      # @see Telnyx::Models::SipHeader#name
      module Name
        extend Telnyx::Internal::Type::Enum

        USER_TO_USER = :"User-to-User"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
