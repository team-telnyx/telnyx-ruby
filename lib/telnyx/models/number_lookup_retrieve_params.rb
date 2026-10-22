# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberLookup#retrieve
    class NumberLookupRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String

      # @!attribute type
      #   Specifies the type of number lookup to be performed. May be supplied more than
      #   once to request several data sources in a single call (for example,
      #   `?type=carrier&type=enhanced-caller-name`). Each requested type populates the
      #   corresponding object in the response.
      #
      #   @return [Symbol, Telnyx::Models::NumberLookupRetrieveParams::Type, nil]
      optional :type, enum: -> { Telnyx::NumberLookupRetrieveParams::Type }

      # @!method initialize(phone_number:, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NumberLookupRetrieveParams} for more details.
      #
      #   @param phone_number [String]
      #
      #   @param type [Symbol, Telnyx::Models::NumberLookupRetrieveParams::Type] Specifies the type of number lookup to be performed. May be supplied more than o
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Specifies the type of number lookup to be performed. May be supplied more than
      # once to request several data sources in a single call (for example,
      # `?type=carrier&type=enhanced-caller-name`). Each requested type populates the
      # corresponding object in the response.
      module Type
        extend Telnyx::Internal::Type::Enum

        CARRIER = :carrier
        CALLER_NAME = :"caller-name"
        CALLER_IDENTITY = :"caller-identity"
        ENHANCED_CALLER_NAME = :"enhanced-caller-name"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
