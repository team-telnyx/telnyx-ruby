# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Requirements#list
    class RequirementListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter for requirements (deepObject style). Originally:
      #   filter[country_code], filter[phone_number_type], filter[action]
      #
      #   @return [Telnyx::Models::RequirementListParams::Filter, nil]
      optional :filter, -> { Telnyx::RequirementListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::RequirementListParams::Page, nil]
      optional :page, -> { Telnyx::RequirementListParams::Page }

      # @!attribute sort
      #   Consolidated sort parameter for requirements (deepObject style). Originally:
      #   sort[]
      #
      #   @return [Array<Symbol, Telnyx::Models::RequirementListParams::Sort>, nil]
      optional :sort, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::RequirementListParams::Sort] }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RequirementListParams} for more details.
      #
      #   @param filter [Telnyx::Models::RequirementListParams::Filter] Consolidated filter parameter for requirements (deepObject style). Originally: f
      #
      #   @param page [Telnyx::Models::RequirementListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param sort [Array<Symbol, Telnyx::Models::RequirementListParams::Sort>] Consolidated sort parameter for requirements (deepObject style). Originally: sor
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute action
        #   Filters requirements to those applying to a specific action.
        #
        #   @return [Symbol, Telnyx::Models::RequirementListParams::Filter::Action, nil]
        optional :action, enum: -> { Telnyx::RequirementListParams::Filter::Action }

        # @!attribute country_code
        #   Filters results to those applying to a 2-character (ISO 3166-1 alpha-2) country
        #   code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute phone_number_type
        #   Filters results to those applying to a specific phone_number_type
        #
        #   @return [Symbol, Telnyx::Models::RequirementListParams::Filter::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::RequirementListParams::Filter::PhoneNumberType }

        # @!method initialize(action: nil, country_code: nil, phone_number_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::RequirementListParams::Filter} for more details.
        #
        #   Consolidated filter parameter for requirements (deepObject style). Originally:
        #   filter[country_code], filter[phone_number_type], filter[action]
        #
        #   @param action [Symbol, Telnyx::Models::RequirementListParams::Filter::Action] Filters requirements to those applying to a specific action.
        #
        #   @param country_code [String] Filters results to those applying to a 2-character (ISO 3166-1 alpha-2) country
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::RequirementListParams::Filter::PhoneNumberType] Filters results to those applying to a specific phone_number_type

        # Filters requirements to those applying to a specific action.
        #
        # @see Telnyx::Models::RequirementListParams::Filter#action
        module Action
          extend Telnyx::Internal::Type::Enum

          BRANDED_CALLING = :branded_calling
          ORDERING = :ordering
          PORTING = :porting

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filters results to those applying to a specific phone_number_type
        #
        # @see Telnyx::Models::RequirementListParams::Filter#phone_number_type
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          LOCAL = :local
          NATIONAL = :national
          TOLL_FREE = :toll_free

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end

      module Sort
        extend Telnyx::Internal::Type::Enum

        CREATED_AT = :created_at
        UPDATED_AT = :updated_at
        COUNTRY_CODE = :country_code
        PHONE_NUMBER_TYPE = :phone_number_type
        CREATED_AT_DESC = :"-created_at"
        UPDATED_AT_DESC = :"-updated_at"
        COUNTRY_CODE_DESC = :"-country_code"
        PHONE_NUMBER_TYPE_DESC = :"-phone_number_type"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
