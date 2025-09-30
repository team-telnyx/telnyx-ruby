# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AvailablePhoneNumberBlocks#list
    class AvailablePhoneNumberBlockListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[locality],
      #   filter[country_code], filter[national_destination_code],
      #   filter[phone_number_type]
      #
      #   @return [Telnyx::Models::AvailablePhoneNumberBlockListParams::Filter, nil]
      optional :filter, -> { Telnyx::AvailablePhoneNumberBlockListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AvailablePhoneNumberBlockListParams} for more details.
      #
      #   @param filter [Telnyx::Models::AvailablePhoneNumberBlockListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[locality],
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute country_code
        #   Filter phone numbers by country.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute locality
        #   Filter phone numbers by city.
        #
        #   @return [String, nil]
        optional :locality, String

        # @!attribute national_destination_code
        #   Filter by the national destination code of the number.
        #
        #   @return [String, nil]
        optional :national_destination_code, String

        # @!attribute phone_number_type
        #   Filter phone numbers by number type.
        #
        #   @return [Symbol, Telnyx::Models::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType, nil]
        optional :phone_number_type,
                 enum: -> { Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType }

        # @!method initialize(country_code: nil, locality: nil, national_destination_code: nil, phone_number_type: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[locality],
        #   filter[country_code], filter[national_destination_code],
        #   filter[phone_number_type]
        #
        #   @param country_code [String] Filter phone numbers by country.
        #
        #   @param locality [String] Filter phone numbers by city.
        #
        #   @param national_destination_code [String] Filter by the national destination code of the number.
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType] Filter phone numbers by number type.

        # Filter phone numbers by number type.
        #
        # @see Telnyx::Models::AvailablePhoneNumberBlockListParams::Filter#phone_number_type
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          LOCAL = :local
          TOLL_FREE = :toll_free
          MOBILE = :mobile
          NATIONAL = :national
          SHARED_COST = :shared_cost

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
