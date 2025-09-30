# frozen_string_literal: true

module Telnyx
  module Resources
    class SubNumberOrdersReport
      # Create a CSV report for sub number orders. The report will be generated
      # asynchronously and can be downloaded once complete.
      #
      # @overload create(country_code: nil, created_at_gt: nil, created_at_lt: nil, customer_reference: nil, order_request_id: nil, status: nil, request_options: {})
      #
      # @param country_code [String] Filter by country code
      #
      # @param created_at_gt [Time] Filter for orders created after this date
      #
      # @param created_at_lt [Time] Filter for orders created before this date
      #
      # @param customer_reference [String] Filter by customer reference
      #
      # @param order_request_id [String] Filter by specific order request ID
      #
      # @param status [Symbol, Telnyx::Models::SubNumberOrdersReportCreateParams::Status] Filter by order status
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SubNumberOrdersReportCreateResponse]
      #
      # @see Telnyx::Models::SubNumberOrdersReportCreateParams
      def create(params = {})
        parsed, options = Telnyx::SubNumberOrdersReportCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "sub_number_orders_report",
          body: parsed,
          model: Telnyx::Models::SubNumberOrdersReportCreateResponse,
          options: options
        )
      end

      # Get the status and details of a sub number orders report.
      #
      # @overload retrieve(report_id, request_options: {})
      #
      # @param report_id [String] The unique identifier of the sub number orders report
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SubNumberOrdersReportRetrieveResponse]
      #
      # @see Telnyx::Models::SubNumberOrdersReportRetrieveParams
      def retrieve(report_id, params = {})
        @client.request(
          method: :get,
          path: ["sub_number_orders_report/%1$s", report_id],
          model: Telnyx::Models::SubNumberOrdersReportRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Download the CSV file for a completed sub number orders report. The report
      # status must be 'success' before the file can be downloaded.
      #
      # @overload download(report_id, request_options: {})
      #
      # @param report_id [String] The unique identifier of the sub number orders report
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::SubNumberOrdersReportDownloadParams
      def download(report_id, params = {})
        @client.request(
          method: :get,
          path: ["sub_number_orders_report/%1$s/download", report_id],
          headers: {"accept" => "text/csv"},
          model: Telnyx::Internal::Type::FileInput,
          options: params[:request_options]
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
