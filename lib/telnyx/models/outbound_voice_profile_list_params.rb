# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OutboundVoiceProfiles#list
    class OutboundVoiceProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[name][contains]
      #
      #   @return [Telnyx::Models::OutboundVoiceProfileListParams::Filter, nil]
      optional :filter, -> { Telnyx::OutboundVoiceProfileListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::OutboundVoiceProfileListParams::Page, nil]
      optional :page, -> { Telnyx::OutboundVoiceProfileListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results. By default sorting direction is ascending.
      #   To have the results sorted in descending order add the <code>-</code>
      #   prefix.<br/><br/> That is: <ul>
      #
      #     <li>
      #       <code>name</code>: sorts the result by the
      #       <code>name</code> field in ascending order.
      #     </li>
      #
      #     <li>
      #       <code>-name</code>: sorts the result by the
      #       <code>name</code> field in descending order.
      #     </li>
      #   </ul> <br/>
      #
      #   @return [Symbol, Telnyx::Models::OutboundVoiceProfileListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::OutboundVoiceProfileListParams::Sort }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::OutboundVoiceProfileListParams} for more details.
      #
      #   @param filter [Telnyx::Models::OutboundVoiceProfileListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]conta
      #
      #   @param page [Telnyx::Models::OutboundVoiceProfileListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param sort [Symbol, Telnyx::Models::OutboundVoiceProfileListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   Name filtering operations
        #
        #   @return [Telnyx::Models::OutboundVoiceProfileListParams::Filter::Name, nil]
        optional :name, -> { Telnyx::OutboundVoiceProfileListParams::Filter::Name }

        # @!method initialize(name: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[name][contains]
        #
        #   @param name [Telnyx::Models::OutboundVoiceProfileListParams::Filter::Name] Name filtering operations

        # @see Telnyx::Models::OutboundVoiceProfileListParams::Filter#name
        class Name < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Optional filter on outbound voice profile name.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Name filtering operations
          #
          #   @param contains [String] Optional filter on outbound voice profile name.
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load.
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load.
        #
        #   @param size [Integer] The size of the page.
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code>-</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>name</code>: sorts the result by the
      #     <code>name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-name</code>: sorts the result by the
      #     <code>name</code> field in descending order.
      #   </li>
      # </ul> <br/>
      module Sort
        extend Telnyx::Internal::Type::Enum

        ENABLED = :enabled
        ENABLED_DESC = :"-enabled"
        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"
        NAME = :name
        NAME_DESC = :"-name"
        SERVICE_PLAN = :service_plan
        SERVICE_PLAN_DESC = :"-service_plan"
        TRAFFIC_TYPE = :traffic_type
        TRAFFIC_TYPE_DESC = :"-traffic_type"
        USAGE_PAYMENT_METHOD = :usage_payment_method
        USAGE_PAYMENT_METHOD_DESC = :"-usage_payment_method"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
