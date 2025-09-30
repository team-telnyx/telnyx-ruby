# typed: strong

module Telnyx
  module Resources
    class SubNumberOrdersReport
      # Create a CSV report for sub number orders. The report will be generated
      # asynchronously and can be downloaded once complete.
      sig do
        params(
          country_code: String,
          created_at_gt: Time,
          created_at_lt: Time,
          customer_reference: String,
          order_request_id: String,
          status: Telnyx::SubNumberOrdersReportCreateParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SubNumberOrdersReportCreateResponse)
      end
      def create(
        # Filter by country code
        country_code: nil,
        # Filter for orders created after this date
        created_at_gt: nil,
        # Filter for orders created before this date
        created_at_lt: nil,
        # Filter by customer reference
        customer_reference: nil,
        # Filter by specific order request ID
        order_request_id: nil,
        # Filter by order status
        status: nil,
        request_options: {}
      )
      end

      # Get the status and details of a sub number orders report.
      sig do
        params(
          report_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SubNumberOrdersReportRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the sub number orders report
        report_id,
        request_options: {}
      )
      end

      # Download the CSV file for a completed sub number orders report. The report
      # status must be 'success' before the file can be downloaded.
      sig do
        params(
          report_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def download(
        # The unique identifier of the sub number orders report
        report_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
