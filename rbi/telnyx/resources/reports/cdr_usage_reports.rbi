# typed: strong

module Telnyx
  module Resources
    class Reports
      class CdrUsageReports
        # Generate and fetch voice usage report synchronously. This endpoint will both
        # generate and fetch the voice report over a specified time period. No polling is
        # necessary but the response may take up to a couple of minutes.
        sig do
          params(
            aggregation_type:
              Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::OrSymbol,
            product_breakdown:
              Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::OrSymbol,
            connections: T::Array[Float],
            end_date: Time,
            start_date: Time,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse)
        end
        def fetch_sync(
          aggregation_type:,
          product_breakdown:,
          connections: nil,
          end_date: nil,
          start_date: nil,
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
end
