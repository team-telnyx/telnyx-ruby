# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class PhoneNumberConfigurations
        # Creates a list of phone number configurations.
        #
        # @overload create(phone_number_configurations: nil, request_options: {})
        #
        # @param phone_number_configurations [Array<Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration>]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateResponse]
        #
        # @see Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateParams
        def create(params = {})
          parsed, options = Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "porting_orders/phone_number_configurations",
            body: parsed,
            model: Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams} for more
        # details.
        #
        # Returns a list of phone number configurations paginated.
        #
        # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_ord
        #
        # @param page [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param sort [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::PhoneNumberConfigurationListResponse]
        #
        # @see Telnyx::Models::PortingOrders::PhoneNumberConfigurationListParams
        def list(params = {})
          parsed, options = Telnyx::PortingOrders::PhoneNumberConfigurationListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "porting_orders/phone_number_configurations",
            query: parsed,
            model: Telnyx::Models::PortingOrders::PhoneNumberConfigurationListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
