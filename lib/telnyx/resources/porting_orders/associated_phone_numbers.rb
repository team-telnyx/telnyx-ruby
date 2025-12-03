# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class AssociatedPhoneNumbers
        # Creates a new associated phone number for a porting order. This is used for
        # partial porting in GB to specify which phone numbers should be kept or
        # disconnected.
        #
        # @overload create(porting_order_id, action:, phone_number_range:, request_options: {})
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone number
        #
        # @param action [Symbol, Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateParams::Action] Specifies the action to take with this phone number during partial porting.
        #
        # @param phone_number_range [Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateResponse]
        #
        # @see Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateParams
        def create(porting_order_id, params)
          parsed, options = Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/associated_phone_numbers", porting_order_id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams} for more
        # details.
        #
        # Returns a list of all associated phone numbers for a porting order. Associated
        # phone numbers are used for partial porting in GB to specify which phone numbers
        # should be kept or disconnected.
        #
        # @overload list(porting_order_id, filter: nil, page: nil, sort: nil, request_options: {})
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone numbers
        #
        # @param filter [Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
        #
        # @param page [Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param sort [Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::AssociatedPhoneNumberListResponse]
        #
        # @see Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams
        def list(porting_order_id, params = {})
          parsed, options = Telnyx::PortingOrders::AssociatedPhoneNumberListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/associated_phone_numbers", porting_order_id],
            query: parsed,
            model: Telnyx::Models::PortingOrders::AssociatedPhoneNumberListResponse,
            options: options
          )
        end

        # Deletes an associated phone number from a porting order.
        #
        # @overload delete(id, porting_order_id:, request_options: {})
        #
        # @param id [String] Identifies the associated phone number to be deleted
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone number
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::AssociatedPhoneNumberDeleteResponse]
        #
        # @see Telnyx::Models::PortingOrders::AssociatedPhoneNumberDeleteParams
        def delete(id, params)
          parsed, options = Telnyx::PortingOrders::AssociatedPhoneNumberDeleteParams.dump_request(params)
          porting_order_id =
            parsed.delete(:porting_order_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["porting_orders/%1$s/associated_phone_numbers/%2$s", porting_order_id, id],
            model: Telnyx::Models::PortingOrders::AssociatedPhoneNumberDeleteResponse,
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
