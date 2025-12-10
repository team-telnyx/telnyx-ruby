# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class PhoneNumberBlocks
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams} for more details.
        #
        # Creates a new phone number block.
        #
        # @overload create(porting_order_id, activation_ranges:, phone_number_range:, request_options: {})
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone number block
        #
        # @param activation_ranges [Array<Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange>] Specifies the activation ranges for this porting phone number block. The activat
        #
        # @param phone_number_range [Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::PhoneNumberBlockCreateResponse]
        #
        # @see Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams
        def create(porting_order_id, params)
          parsed, options = Telnyx::PortingOrders::PhoneNumberBlockCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/phone_number_blocks", porting_order_id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::PhoneNumberBlockCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::PhoneNumberBlockListParams} for more details.
        #
        # Returns a list of all phone number blocks of a porting order.
        #
        # @overload list(porting_order_id, filter: nil, page: nil, sort: nil, request_options: {})
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone number blocks
        #
        # @param filter [Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_ord
        #
        # @param page [Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param sort [Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::PortingOrders::PortingPhoneNumberBlock>]
        #
        # @see Telnyx::Models::PortingOrders::PhoneNumberBlockListParams
        def list(porting_order_id, params = {})
          parsed, options = Telnyx::PortingOrders::PhoneNumberBlockListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/phone_number_blocks", porting_order_id],
            query: parsed,
            page: Telnyx::Internal::DefaultPagination,
            model: Telnyx::PortingOrders::PortingPhoneNumberBlock,
            options: options
          )
        end

        # Deletes a phone number block.
        #
        # @overload delete(id, porting_order_id:, request_options: {})
        #
        # @param id [String] Identifies the phone number block to be deleted
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone number block
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::PhoneNumberBlockDeleteResponse]
        #
        # @see Telnyx::Models::PortingOrders::PhoneNumberBlockDeleteParams
        def delete(id, params)
          parsed, options = Telnyx::PortingOrders::PhoneNumberBlockDeleteParams.dump_request(params)
          porting_order_id =
            parsed.delete(:porting_order_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["porting_orders/%1$s/phone_number_blocks/%2$s", porting_order_id, id],
            model: Telnyx::Models::PortingOrders::PhoneNumberBlockDeleteResponse,
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
