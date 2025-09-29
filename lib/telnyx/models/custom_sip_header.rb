# frozen_string_literal: true

module Telnyx
  module Models
    class CustomSipHeader < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the header to add.
      #
      #   @return [String]
      required :name, String

      # @!attribute value
      #   The value of the header.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(name:, value:)
      #   @param name [String] The name of the header to add.
      #
      #   @param value [String] The value of the header.
    end
  end
end
