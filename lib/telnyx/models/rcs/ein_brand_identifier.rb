# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class EinBrandIdentifier < Telnyx::Internal::Type::BaseModel
        # @!attribute identifier_type
        #
        #   @return [Symbol, :EIN]
        required :identifier_type, const: :EIN

        # @!attribute value
        #   Nine digits, optionally formatted as NN-NNNNNNN.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(value:, identifier_type: :EIN)
        #   @param value [String] Nine digits, optionally formatted as NN-NNNNNNN.
        #
        #   @param identifier_type [Symbol, :EIN]
      end
    end
  end
end
