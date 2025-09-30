# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RegulatoryRequirements#retrieve
    class RegulatoryRequirementRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[phone_number], filter[requirement_group_id], filter[country_code],
      #   filter[phone_number_type], filter[action]
      #
      #   @return [Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter, nil]
      optional :filter, -> { Telnyx::RegulatoryRequirementRetrieveParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RegulatoryRequirementRetrieveParams} for more details.
      #
      #   @param filter [Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute action
        #   Action to check requirements for
        #
        #   @return [Symbol, Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter::Action, nil]
        optional :action, enum: -> { Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action }

        # @!attribute country_code
        #   Country code(iso2) to check requirements for
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute phone_number
        #   Phone number to check requirements for
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute phone_number_type
        #   Phone number type to check requirements for
        #
        #   @return [Symbol, Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType, nil]
        optional :phone_number_type,
                 enum: -> { Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType }

        # @!attribute requirement_group_id
        #   ID of requirement group to check requirements for
        #
        #   @return [String, nil]
        optional :requirement_group_id, String

        # @!method initialize(action: nil, country_code: nil, phone_number: nil, phone_number_type: nil, requirement_group_id: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[phone_number], filter[requirement_group_id], filter[country_code],
        #   filter[phone_number_type], filter[action]
        #
        #   @param action [Symbol, Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter::Action] Action to check requirements for
        #
        #   @param country_code [String] Country code(iso2) to check requirements for
        #
        #   @param phone_number [String] Phone number to check requirements for
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType] Phone number type to check requirements for
        #
        #   @param requirement_group_id [String] ID of requirement group to check requirements for

        # Action to check requirements for
        #
        # @see Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter#action
        module Action
          extend Telnyx::Internal::Type::Enum

          ORDERING = :ordering
          PORTING = :porting
          ACTION = :action

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Phone number type to check requirements for
        #
        # @see Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter#phone_number_type
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
