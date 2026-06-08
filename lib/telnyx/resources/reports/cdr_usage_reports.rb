# frozen_string_literal: true

module Telnyx
  module Resources
    class Reports
      # Voice usage reports
      class CdrUsageReports
        # Generate and fetch voice usage report synchronously. This endpoint will both
        # generate and fetch the voice report over a specified time period. No polling is
        # necessary but the response may take up to a couple of minutes.
        #
        # @overload fetch_sync(aggregation_type:, product_breakdown:, connections: nil, end_date: nil, start_date: nil, request_options: {})
        #
        # @param aggregation_type [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::AggregationType] Type of aggregation to apply to the results.
        #
        # @param product_breakdown [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown] Filter results by product breakdown.
        #
        # @param connections [Array<Float>] Filter results by connection.
        #
        # @param end_date [Time] End of the date range filter (inclusive, ISO 8601).
        #
        # @param start_date [Time] Start of the date range filter (inclusive, ISO 8601).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse]
        #
        # @see Telnyx::Models::Reports::CdrUsageReportFetchSyncParams
        def fetch_sync(params)
          parsed, options = Telnyx::Reports::CdrUsageReportFetchSyncParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "reports/cdr_usage_reports/sync",
            query: query,
            model: Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse,
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
