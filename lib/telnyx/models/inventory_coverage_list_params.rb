# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InventoryCoverage#list
    class InventoryCoverageListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[npa],
      #   filter[nxx], filter[administrative_area], filter[phone_number_type],
      #   filter[country_code], filter[count], filter[features], filter[groupBy]
      #
      #   @return [Telnyx::Models::InventoryCoverageListParams::Filter, nil]
      optional :filter, -> { Telnyx::InventoryCoverageListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::InventoryCoverageListParams} for more details.
      #
      #   @param filter [Telnyx::Models::InventoryCoverageListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[npa], filte
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute administrative_area
        #   Filter by administrative area
        #
        #   @return [String, nil]
        optional :administrative_area, String

        # @!attribute count
        #   Include count in the result
        #
        #   @return [Boolean, nil]
        optional :count, Telnyx::Internal::Type::Boolean

        # @!attribute country_code
        #   Filter by country. Defaults to US
        #
        #   @return [Symbol, Telnyx::Models::InventoryCoverageListParams::Filter::CountryCode, nil]
        optional :country_code, enum: -> { Telnyx::InventoryCoverageListParams::Filter::CountryCode }

        # @!attribute features
        #   Filter if the phone number should be used for voice, fax, mms, sms, emergency.
        #   Returns features in the response when used.
        #
        #   @return [Array<Symbol, Telnyx::Models::InventoryCoverageListParams::Filter::Feature>, nil]
        optional :features,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::InventoryCoverageListParams::Filter::Feature] }

        # @!attribute group_by
        #   Filter to group results
        #
        #   @return [Symbol, Telnyx::Models::InventoryCoverageListParams::Filter::GroupBy, nil]
        optional :group_by,
                 enum: -> {
                   Telnyx::InventoryCoverageListParams::Filter::GroupBy
                 },
                 api_name: :groupBy

        # @!attribute npa
        #   Filter by npa
        #
        #   @return [Integer, nil]
        optional :npa, Integer

        # @!attribute nxx
        #   Filter by nxx
        #
        #   @return [Integer, nil]
        optional :nxx, Integer

        # @!attribute phone_number_type
        #   Filter by phone number type
        #
        #   @return [Symbol, Telnyx::Models::InventoryCoverageListParams::Filter::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType }

        # @!method initialize(administrative_area: nil, count: nil, country_code: nil, features: nil, group_by: nil, npa: nil, nxx: nil, phone_number_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::InventoryCoverageListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally: filter[npa],
        #   filter[nxx], filter[administrative_area], filter[phone_number_type],
        #   filter[country_code], filter[count], filter[features], filter[groupBy]
        #
        #   @param administrative_area [String] Filter by administrative area
        #
        #   @param count [Boolean] Include count in the result
        #
        #   @param country_code [Symbol, Telnyx::Models::InventoryCoverageListParams::Filter::CountryCode] Filter by country. Defaults to US
        #
        #   @param features [Array<Symbol, Telnyx::Models::InventoryCoverageListParams::Filter::Feature>] Filter if the phone number should be used for voice, fax, mms, sms, emergency. R
        #
        #   @param group_by [Symbol, Telnyx::Models::InventoryCoverageListParams::Filter::GroupBy] Filter to group results
        #
        #   @param npa [Integer] Filter by npa
        #
        #   @param nxx [Integer] Filter by nxx
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::InventoryCoverageListParams::Filter::PhoneNumberType] Filter by phone number type

        # Filter by country. Defaults to US
        #
        # @see Telnyx::Models::InventoryCoverageListParams::Filter#country_code
        module CountryCode
          extend Telnyx::Internal::Type::Enum

          AT = :AT
          AU = :AU
          BE = :BE
          BG = :BG
          CA = :CA
          CH = :CH
          CN = :CN
          CY = :CY
          CZ = :CZ
          DE = :DE
          DK = :DK
          EE = :EE
          ES = :ES
          FI = :FI
          FR = :FR
          GB = :GB
          GR = :GR
          HU = :HU
          HR = :HR
          IE = :IE
          IT = :IT
          LT = :LT
          LU = :LU
          LV = :LV
          NL = :NL
          NZ = :NZ
          MX = :MX
          NO = :NO
          PL = :PL
          PT = :PT
          RO = :RO
          SE = :SE
          SG = :SG
          SI = :SI
          SK = :SK
          US = :US

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Feature
          extend Telnyx::Internal::Type::Enum

          SMS = :sms
          MMS = :mms
          VOICE = :voice
          FAX = :fax
          EMERGENCY = :emergency

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter to group results
        #
        # @see Telnyx::Models::InventoryCoverageListParams::Filter#group_by
        module GroupBy
          extend Telnyx::Internal::Type::Enum

          LOCALITY = :locality
          NPA = :npa
          NATIONAL_DESTINATION_CODE = :national_destination_code

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter by phone number type
        #
        # @see Telnyx::Models::InventoryCoverageListParams::Filter#phone_number_type
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          LOCAL = :local
          TOLL_FREE = :toll_free
          NATIONAL = :national
          MOBILE = :mobile
          LANDLINE = :landline
          SHARED_COST = :shared_cost

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
