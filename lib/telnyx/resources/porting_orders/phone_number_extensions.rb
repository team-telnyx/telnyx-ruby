# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class PhoneNumberExtensions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams} for more
        # details.
        #
        # Creates a new phone number extension.
        #
        # @overload create(porting_order_id, activation_ranges:, extension_range:, porting_phone_number_id:, request_options: {})
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone number extension
        #
        # @param activation_ranges [Array<Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange>] Specifies the activation ranges for this porting phone number extension. The act
        #
        # @param extension_range [Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange]
        #
        # @param porting_phone_number_id [String] Identifies the porting phone number associated with this porting phone number ex
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateResponse]
        #
        # @see Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams
        def create(porting_order_id, params)
          parsed, options = Telnyx::PortingOrders::PhoneNumberExtensionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/phone_number_extensions", porting_order_id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams} for more
        # details.
        #
        # Returns a list of all phone number extensions of a porting order.
        #
        # @overload list(porting_order_id, filter: nil, page: nil, sort: nil, request_options: {})
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone number extensions
        #
        # @param filter [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_pho
        #
        # @param page [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param sort [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::PhoneNumberExtensionListResponse]
        #
        # @see Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams
        def list(porting_order_id, params = {})
          parsed, options = Telnyx::PortingOrders::PhoneNumberExtensionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/phone_number_extensions", porting_order_id],
            query: parsed,
            model: Telnyx::Models::PortingOrders::PhoneNumberExtensionListResponse,
            options: options
          )
        end

        # Deletes a phone number extension.
        #
        # @overload delete(id, porting_order_id:, request_options: {})
        #
        # @param id [String] Identifies the phone number extension to be deleted
        #
        # @param porting_order_id [String] Identifies the Porting Order associated with the phone number extension
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::PhoneNumberExtensionDeleteResponse]
        #
        # @see Telnyx::Models::PortingOrders::PhoneNumberExtensionDeleteParams
        def delete(id, params)
          parsed, options = Telnyx::PortingOrders::PhoneNumberExtensionDeleteParams.dump_request(params)
          porting_order_id =
            parsed.delete(:porting_order_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["porting_orders/%1$s/phone_number_extensions/%2$s", porting_order_id, id],
            model: Telnyx::Models::PortingOrders::PhoneNumberExtensionDeleteResponse,
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
