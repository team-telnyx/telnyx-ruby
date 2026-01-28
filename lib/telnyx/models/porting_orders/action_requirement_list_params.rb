# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::ActionRequirements#list
      class ActionRequirementListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally: filter[id][in][],
        #   filter[requirement_type_id], filter[action_type], filter[status]
        #
        #   @return [Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter, nil]
        optional :filter, -> { Telnyx::PortingOrders::ActionRequirementListParams::Filter }

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute sort
        #   Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @return [Telnyx::Models::PortingOrders::ActionRequirementListParams::Sort, nil]
        optional :sort, -> { Telnyx::PortingOrders::ActionRequirementListParams::Sort }

        # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::ActionRequirementListParams} for more details.
        #
        #   @param filter [Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[id][in][],
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param sort [Telnyx::Models::PortingOrders::ActionRequirementListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Filter action requirements by a list of IDs
          #
          #   @return [Array<String>, nil]
          optional :id, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute action_type
          #   Filter action requirements by action type
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter::ActionType, nil]
          optional :action_type, enum: -> { Telnyx::PortingOrders::ActionRequirementListParams::Filter::ActionType }

          # @!attribute requirement_type_id
          #   Filter action requirements by requirement type ID
          #
          #   @return [String, nil]
          optional :requirement_type_id, String

          # @!attribute status
          #   Filter action requirements by status
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter::Status, nil]
          optional :status, enum: -> { Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status }

          # @!method initialize(id: nil, action_type: nil, requirement_type_id: nil, status: nil)
          #   Consolidated filter parameter (deepObject style). Originally: filter[id][in][],
          #   filter[requirement_type_id], filter[action_type], filter[status]
          #
          #   @param id [Array<String>] Filter action requirements by a list of IDs
          #
          #   @param action_type [Symbol, Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter::ActionType] Filter action requirements by action type
          #
          #   @param requirement_type_id [String] Filter action requirements by requirement type ID
          #
          #   @param status [Symbol, Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter::Status] Filter action requirements by status

          # Filter action requirements by action type
          #
          # @see Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter#action_type
          module ActionType
            extend Telnyx::Internal::Type::Enum

            AU_ID_VERIFICATION = :au_id_verification

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter action requirements by status
          #
          # @see Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter#status
          module Status
            extend Telnyx::Internal::Type::Enum

            CREATED = :created
            PENDING = :pending
            COMPLETED = :completed
            CANCELLED = :cancelled
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Sort < Telnyx::Internal::Type::BaseModel
          # @!attribute value
          #   Specifies the sort order for results. If not given, results are sorted by
          #   created_at in descending order.
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::ActionRequirementListParams::Sort::Value, nil]
          optional :value, enum: -> { Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value }

          # @!method initialize(value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::ActionRequirementListParams::Sort} for more
          #   details.
          #
          #   Consolidated sort parameter (deepObject style). Originally: sort[value]
          #
          #   @param value [Symbol, Telnyx::Models::PortingOrders::ActionRequirementListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          #
          # @see Telnyx::Models::PortingOrders::ActionRequirementListParams::Sort#value
          module Value
            extend Telnyx::Internal::Type::Enum

            CREATED_AT = :created_at
            CREATED_AT_DESC = :"-created_at"
            UPDATED_AT = :updated_at
            UPDATED_AT_DESC = :"-updated_at"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
