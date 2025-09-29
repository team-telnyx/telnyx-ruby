# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbersRegulatoryRequirements#retrieve
    class PhoneNumbersRegulatoryRequirementRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[phone_number]
      #
      #   @return [Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter, nil]
      optional :filter, -> { Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveParams} for more
      #   details.
      #
      #   @param filter [Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute phone_number
        #   Record type phone number/ phone numbers
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(phone_number: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[phone_number]
        #
        #   @param phone_number [String] Record type phone number/ phone numbers
      end
    end
  end
end
