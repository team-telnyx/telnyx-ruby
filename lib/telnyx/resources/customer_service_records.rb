# frozen_string_literal: true

module Telnyx
  module Resources
    class CustomerServiceRecords
      # Create a new customer service record for the provided phone number.
      #
      # @overload create(phone_number:, additional_data: nil, webhook_url: nil, request_options: {})
      #
      # @param phone_number [String] A valid US phone number in E164 format.
      #
      # @param additional_data [Telnyx::Models::CustomerServiceRecordCreateParams::AdditionalData]
      #
      # @param webhook_url [String] Callback URL to receive webhook notifications.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CustomerServiceRecordCreateResponse]
      #
      # @see Telnyx::Models::CustomerServiceRecordCreateParams
      def create(params)
        parsed, options = Telnyx::CustomerServiceRecordCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customer_service_records",
          body: parsed,
          model: Telnyx::Models::CustomerServiceRecordCreateResponse,
          options: options
        )
      end

      # Get a specific customer service record.
      #
      # @overload retrieve(customer_service_record_id, request_options: {})
      #
      # @param customer_service_record_id [String] The ID of the customer service record
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CustomerServiceRecordRetrieveResponse]
      #
      # @see Telnyx::Models::CustomerServiceRecordRetrieveParams
      def retrieve(customer_service_record_id, params = {})
        @client.request(
          method: :get,
          path: ["customer_service_records/%1$s", customer_service_record_id],
          model: Telnyx::Models::CustomerServiceRecordRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CustomerServiceRecordListParams} for more details.
      #
      # List customer service records.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::CustomerServiceRecordListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort [Telnyx::Models::CustomerServiceRecordListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::CustomerServiceRecord>]
      #
      # @see Telnyx::Models::CustomerServiceRecordListParams
      def list(params = {})
        parsed, options = Telnyx::CustomerServiceRecordListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customer_service_records",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::CustomerServiceRecord,
          options: options
        )
      end

      # Verify the coverage for a list of phone numbers.
      #
      # @overload verify_phone_number_coverage(phone_numbers:, request_options: {})
      #
      # @param phone_numbers [Array<String>] The phone numbers list to be verified.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse]
      #
      # @see Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageParams
      def verify_phone_number_coverage(params)
        parsed, options = Telnyx::CustomerServiceRecordVerifyPhoneNumberCoverageParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customer_service_records/phone_number_coverages",
          body: parsed,
          model: Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse,
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
