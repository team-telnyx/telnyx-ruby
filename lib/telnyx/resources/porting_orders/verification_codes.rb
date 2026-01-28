# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class VerificationCodes
        # Returns a list of verification codes for a porting order.
        #
        # @overload list(id, filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param filter [Telnyx::Models::PortingOrders::VerificationCodeListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[verified]
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param sort [Telnyx::Models::PortingOrders::VerificationCodeListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PortingOrders::VerificationCodeListResponse>]
        #
        # @see Telnyx::Models::PortingOrders::VerificationCodeListParams
        def list(id, params = {})
          parsed, options = Telnyx::PortingOrders::VerificationCodeListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/verification_codes", id],
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::PortingOrders::VerificationCodeListResponse,
            options: options
          )
        end

        # Send the verification code for all porting phone numbers.
        #
        # @overload send_(id, phone_numbers: nil, verification_method: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param phone_numbers [Array<String>]
        #
        # @param verification_method [Symbol, Telnyx::Models::PortingOrders::VerificationCodeSendParams::VerificationMethod]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::PortingOrders::VerificationCodeSendParams
        def send_(id, params = {})
          parsed, options = Telnyx::PortingOrders::VerificationCodeSendParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/verification_codes/send", id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Verifies the verification code for a list of phone numbers.
        #
        # @overload verify(id, verification_codes: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param verification_codes [Array<Telnyx::Models::PortingOrders::VerificationCodeVerifyParams::VerificationCode>]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::VerificationCodeVerifyResponse]
        #
        # @see Telnyx::Models::PortingOrders::VerificationCodeVerifyParams
        def verify(id, params = {})
          parsed, options = Telnyx::PortingOrders::VerificationCodeVerifyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/verification_codes/verify", id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::VerificationCodeVerifyResponse,
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
