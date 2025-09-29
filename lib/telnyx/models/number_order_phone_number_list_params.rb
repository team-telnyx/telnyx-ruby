# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrderPhoneNumbers#list
    class NumberOrderPhoneNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[country_code]
      #
      #   @return [Telnyx::Models::NumberOrderPhoneNumberListParams::Filter, nil]
      optional :filter, -> { Telnyx::NumberOrderPhoneNumberListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NumberOrderPhoneNumberListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NumberOrderPhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[country_cod
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute country_code
        #   Country code of the order phone number.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!method initialize(country_code: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[country_code]
        #
        #   @param country_code [String] Country code of the order phone number.
      end
    end
  end
end
