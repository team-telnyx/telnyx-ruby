# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AvailablePhoneNumbers#list
    class AvailablePhoneNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[phone_number], filter[locality], filter[administrative_area],
      #   filter[country_code], filter[national_destination_code], filter[rate_center],
      #   filter[phone_number_type], filter[features], filter[limit], filter[best_effort],
      #   filter[quickship], filter[reservable], filter[exclude_held_numbers]
      #
      #   @return [Telnyx::Models::AvailablePhoneNumberListParams::Filter, nil]
      optional :filter, -> { Telnyx::AvailablePhoneNumberListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AvailablePhoneNumberListParams} for more details.
      #
      #   @param filter [Telnyx::Models::AvailablePhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute administrative_area
        #   Find numbers in a particular US state or CA province.
        #
        #   @return [String, nil]
        optional :administrative_area, String

        # @!attribute best_effort
        #   Filter to determine if best effort results should be included. Only available in
        #   USA/CANADA.
        #
        #   @return [Boolean, nil]
        optional :best_effort, Telnyx::Internal::Type::Boolean

        # @!attribute country_code
        #   Filter phone numbers by country.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute exclude_held_numbers
        #   Filter to exclude phone numbers that are currently on hold/reserved for your
        #   account.
        #
        #   @return [Boolean, nil]
        optional :exclude_held_numbers, Telnyx::Internal::Type::Boolean

        # @!attribute features
        #   Filter phone numbers with specific features.
        #
        #   @return [Array<Symbol, Telnyx::Models::AvailablePhoneNumberListParams::Filter::Feature>, nil]
        optional :features,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AvailablePhoneNumberListParams::Filter::Feature] }

        # @!attribute limit
        #   Limits the number of results.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

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

        # @!attribute phone_number
        #   Filter phone numbers by pattern matching.
        #
        #   @return [Telnyx::Models::AvailablePhoneNumberListParams::Filter::PhoneNumber, nil]
        optional :phone_number, -> { Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumber }

        # @!attribute phone_number_type
        #   Filter phone numbers by number type.
        #
        #   @return [Symbol, Telnyx::Models::AvailablePhoneNumberListParams::Filter::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType }

        # @!attribute quickship
        #   Filter to exclude phone numbers that need additional time after to purchase to
        #   activate. Only applicable for +1 toll_free numbers.
        #
        #   @return [Boolean, nil]
        optional :quickship, Telnyx::Internal::Type::Boolean

        # @!attribute rate_center
        #   Filter phone numbers by rate center. This filter is only applicable to USA and
        #   Canada numbers.
        #
        #   @return [String, nil]
        optional :rate_center, String

        # @!attribute reservable
        #   Filter to ensure only numbers that can be reserved are included in the results.
        #
        #   @return [Boolean, nil]
        optional :reservable, Telnyx::Internal::Type::Boolean

        # @!method initialize(administrative_area: nil, best_effort: nil, country_code: nil, exclude_held_numbers: nil, features: nil, limit: nil, locality: nil, national_destination_code: nil, phone_number: nil, phone_number_type: nil, quickship: nil, rate_center: nil, reservable: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AvailablePhoneNumberListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[phone_number], filter[locality], filter[administrative_area],
        #   filter[country_code], filter[national_destination_code], filter[rate_center],
        #   filter[phone_number_type], filter[features], filter[limit], filter[best_effort],
        #   filter[quickship], filter[reservable], filter[exclude_held_numbers]
        #
        #   @param administrative_area [String] Find numbers in a particular US state or CA province.
        #
        #   @param best_effort [Boolean] Filter to determine if best effort results should be included. Only available in
        #
        #   @param country_code [String] Filter phone numbers by country.
        #
        #   @param exclude_held_numbers [Boolean] Filter to exclude phone numbers that are currently on hold/reserved for your acc
        #
        #   @param features [Array<Symbol, Telnyx::Models::AvailablePhoneNumberListParams::Filter::Feature>] Filter phone numbers with specific features.
        #
        #   @param limit [Integer] Limits the number of results.
        #
        #   @param locality [String] Filter phone numbers by city.
        #
        #   @param national_destination_code [String] Filter by the national destination code of the number.
        #
        #   @param phone_number [Telnyx::Models::AvailablePhoneNumberListParams::Filter::PhoneNumber] Filter phone numbers by pattern matching.
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::AvailablePhoneNumberListParams::Filter::PhoneNumberType] Filter phone numbers by number type.
        #
        #   @param quickship [Boolean] Filter to exclude phone numbers that need additional time after to purchase to a
        #
        #   @param rate_center [String] Filter phone numbers by rate center. This filter is only applicable to USA and C
        #
        #   @param reservable [Boolean] Filter to ensure only numbers that can be reserved are included in the results.

        module Feature
          extend Telnyx::Internal::Type::Enum

          SMS = :sms
          MMS = :mms
          VOICE = :voice
          FAX = :fax
          EMERGENCY = :emergency
          HD_VOICE = :hd_voice
          INTERNATIONAL_SMS = :international_sms
          LOCAL_CALLING = :local_calling

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::AvailablePhoneNumberListParams::Filter#phone_number
        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Filter numbers containing a pattern (excludes NDC if used with
          #   `national_destination_code` filter).
          #
          #   @return [String, nil]
          optional :contains, String

          # @!attribute ends_with
          #   Filter numbers ending with a pattern (excludes NDC if used with
          #   `national_destination_code` filter).
          #
          #   @return [String, nil]
          optional :ends_with, String

          # @!attribute starts_with
          #   Filter numbers starting with a pattern (excludes NDC if used with
          #   `national_destination_code` filter).
          #
          #   @return [String, nil]
          optional :starts_with, String

          # @!method initialize(contains: nil, ends_with: nil, starts_with: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AvailablePhoneNumberListParams::Filter::PhoneNumber} for more
          #   details.
          #
          #   Filter phone numbers by pattern matching.
          #
          #   @param contains [String] Filter numbers containing a pattern (excludes NDC if used with `national_destina
          #
          #   @param ends_with [String] Filter numbers ending with a pattern (excludes NDC if used with `national_destin
          #
          #   @param starts_with [String] Filter numbers starting with a pattern (excludes NDC if used with `national_dest
        end

        # Filter phone numbers by number type.
        #
        # @see Telnyx::Models::AvailablePhoneNumberListParams::Filter#phone_number_type
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
