# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingHostedNumberOrders
      # @return [Telnyx::Resources::MessagingHostedNumberOrders::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingHostedNumberOrderCreateParams} for more details.
      #
      # Create a messaging hosted number order
      #
      # @overload create(messaging_profile_id: nil, phone_numbers: nil, request_options: {})
      #
      # @param messaging_profile_id [String] Automatically associate the number with this messaging profile ID when the order
      #
      # @param phone_numbers [Array<String>] Phone numbers to be used for hosted messaging.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberOrderCreateResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberOrderCreateParams
      def create(params = {})
        parsed, options = Telnyx::MessagingHostedNumberOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messaging_hosted_number_orders",
          body: parsed,
          model: Telnyx::Models::MessagingHostedNumberOrderCreateResponse,
          options: options
        )
      end

      # Retrieve a messaging hosted number order
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the type of resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberOrderRetrieveResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberOrderRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["messaging_hosted_number_orders/%1$s", id],
          model: Telnyx::Models::MessagingHostedNumberOrderRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingHostedNumberOrderListParams} for more details.
      #
      # List messaging hosted number orders
      #
      # @overload list(page: nil, request_options: {})
      #
      # @param page [Telnyx::Models::MessagingHostedNumberOrderListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberOrderListResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberOrderListParams
      def list(params = {})
        parsed, options = Telnyx::MessagingHostedNumberOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messaging_hosted_number_orders",
          query: parsed,
          model: Telnyx::Models::MessagingHostedNumberOrderListResponse,
          options: options
        )
      end

      # Delete a messaging hosted number order and all associated phone numbers.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the messaging hosted number order to delete.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberOrderDeleteResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberOrderDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["messaging_hosted_number_orders/%1$s", id],
          model: Telnyx::Models::MessagingHostedNumberOrderDeleteResponse,
          options: params[:request_options]
        )
      end

      # Check eligibility of phone numbers for hosted messaging
      #
      # @overload check_eligibility(phone_numbers:, request_options: {})
      #
      # @param phone_numbers [Array<String>] List of phone numbers to check eligibility
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityParams
      def check_eligibility(params)
        parsed, options = Telnyx::MessagingHostedNumberOrderCheckEligibilityParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messaging_hosted_number_orders/eligibility_numbers_check",
          body: parsed,
          model: Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse,
          options: options
        )
      end

      # Create verification codes to validate numbers of the hosted order. The
      # verification codes will be sent to the numbers of the hosted order.
      #
      # @overload create_verification_codes(id, phone_numbers:, verification_method:, request_options: {})
      #
      # @param id [String] Order ID to have a verification code created.
      #
      # @param phone_numbers [Array<String>]
      #
      # @param verification_method [Symbol, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesParams
      def create_verification_codes(id, params)
        parsed, options = Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["messaging_hosted_number_orders/%1$s/verification_codes", id],
          body: parsed,
          model: Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse,
          options: options
        )
      end

      # Validate the verification codes sent to the numbers of the hosted order. The
      # verification codes must be created in the verification codes endpoint.
      #
      # @overload validate_codes(id, verification_codes:, request_options: {})
      #
      # @param id [String] Order ID related to the validation codes.
      #
      # @param verification_codes [Array<Telnyx::Models::MessagingHostedNumberOrderValidateCodesParams::VerificationCode>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberOrderValidateCodesParams
      def validate_codes(id, params)
        parsed, options = Telnyx::MessagingHostedNumberOrderValidateCodesParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["messaging_hosted_number_orders/%1$s/validation_codes", id],
          body: parsed,
          model: Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::MessagingHostedNumberOrders::Actions.new(client: client)
      end
    end
  end
end
