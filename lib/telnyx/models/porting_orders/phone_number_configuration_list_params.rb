# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberConfigurations#list
      class PhoneNumberConfigurationListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[porting_order.status][in][], filter[porting_phone_number][in][],
        #   filter[user_bundle_id][in][]
        #
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Filter, nil]
        optional :filter, -> { Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter }

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
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Sort, nil]
        optional :sort, -> { Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort }

        # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams} for more
        #   details.
        #
        #   @param filter [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_ord
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param sort [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute porting_order
          #
          #   @return [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder, nil]
          optional :porting_order,
                   -> { Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder }

          # @!attribute porting_phone_number
          #   Filter results by a list of porting phone number IDs
          #
          #   @return [Array<String>, nil]
          optional :porting_phone_number, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute user_bundle_id
          #   Filter results by a list of user bundle IDs
          #
          #   @return [Array<String>, nil]
          optional :user_bundle_id, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(porting_order: nil, porting_phone_number: nil, user_bundle_id: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[porting_order.status][in][], filter[porting_phone_number][in][],
          #   filter[user_bundle_id][in][]
          #
          #   @param porting_order [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder]
          #
          #   @param porting_phone_number [Array<String>] Filter results by a list of porting phone number IDs
          #
          #   @param user_bundle_id [Array<String>] Filter results by a list of user bundle IDs

          # @see Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Filter#porting_order
          class PortingOrder < Telnyx::Internal::Type::BaseModel
            # @!attribute status
            #   Filter results by specific porting order statuses
            #
            #   @return [Array<Symbol, Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status>, nil]
            optional :status,
                     -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status] }

            # @!method initialize(status: nil)
            #   @param status [Array<Symbol, Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status>] Filter results by specific porting order statuses

            module Status
              extend Telnyx::Internal::Type::Enum

              ACTIVATION_IN_PROGRESS = :"activation-in-progress"
              CANCEL_PENDING = :"cancel-pending"
              CANCELLED = :cancelled
              DRAFT = :draft
              EXCEPTION = :exception
              FOC_DATE_CONFIRMED = :"foc-date-confirmed"
              IN_PROCESS = :"in-process"
              PORTED = :ported
              SUBMITTED = :submitted

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class Sort < Telnyx::Internal::Type::BaseModel
          # @!attribute value
          #   Specifies the sort order for results. If not given, results are sorted by
          #   created_at in descending order.
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value, nil]
          optional :value, enum: -> { Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value }

          # @!method initialize(value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Sort} for
          #   more details.
          #
          #   Consolidated sort parameter (deepObject style). Originally: sort[value]
          #
          #   @param value [Symbol, Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          #
          # @see Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Sort#value
          module Value
            extend Telnyx::Internal::Type::Enum

            CREATED_AT = :created_at
            CREATED_AT_DESC = :"-created_at"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
