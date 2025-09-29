# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RequirementGroups#list
    class RequirementGroupListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[country_code], filter[phone_number_type], filter[action], filter[status],
      #   filter[customer_reference]
      #
      #   @return [Telnyx::Models::RequirementGroupListParams::Filter, nil]
      optional :filter, -> { Telnyx::RequirementGroupListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RequirementGroupListParams} for more details.
      #
      #   @param filter [Telnyx::Models::RequirementGroupListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[country_cod
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute action
        #   Filter requirement groups by action type
        #
        #   @return [Symbol, Telnyx::Models::RequirementGroupListParams::Filter::Action, nil]
        optional :action, enum: -> { Telnyx::RequirementGroupListParams::Filter::Action }

        # @!attribute country_code
        #   Filter requirement groups by country code (iso alpha 2)
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute customer_reference
        #   Filter requirement groups by customer reference
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute phone_number_type
        #   Filter requirement groups by phone number type.
        #
        #   @return [Symbol, Telnyx::Models::RequirementGroupListParams::Filter::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::RequirementGroupListParams::Filter::PhoneNumberType }

        # @!attribute status
        #   Filter requirement groups by status
        #
        #   @return [Symbol, Telnyx::Models::RequirementGroupListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::RequirementGroupListParams::Filter::Status }

        # @!method initialize(action: nil, country_code: nil, customer_reference: nil, phone_number_type: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[country_code], filter[phone_number_type], filter[action], filter[status],
        #   filter[customer_reference]
        #
        #   @param action [Symbol, Telnyx::Models::RequirementGroupListParams::Filter::Action] Filter requirement groups by action type
        #
        #   @param country_code [String] Filter requirement groups by country code (iso alpha 2)
        #
        #   @param customer_reference [String] Filter requirement groups by customer reference
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::RequirementGroupListParams::Filter::PhoneNumberType] Filter requirement groups by phone number type.
        #
        #   @param status [Symbol, Telnyx::Models::RequirementGroupListParams::Filter::Status] Filter requirement groups by status

        # Filter requirement groups by action type
        #
        # @see Telnyx::Models::RequirementGroupListParams::Filter#action
        module Action
          extend Telnyx::Internal::Type::Enum

          ORDERING = :ordering
          PORTING = :porting
          ACTION = :action

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter requirement groups by phone number type.
        #
        # @see Telnyx::Models::RequirementGroupListParams::Filter#phone_number_type
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

        # Filter requirement groups by status
        #
        # @see Telnyx::Models::RequirementGroupListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          APPROVED = :approved
          UNAPPROVED = :unapproved
          PENDING_APPROVAL = :"pending-approval"
          DECLINED = :declined

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
