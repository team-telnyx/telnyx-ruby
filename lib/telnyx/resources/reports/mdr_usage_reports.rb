# frozen_string_literal: true

module Telnyx
  module Resources
    class Reports
      class MdrUsageReports
        # Submit request for new new messaging usage report. This endpoint will pull and
        # aggregate messaging data in specified time period.
        #
        # @overload create(aggregation_type:, end_date:, start_date:, profiles: nil, request_options: {})
        #
        # @param aggregation_type [Symbol, Telnyx::Models::Reports::MdrUsageReportCreateParams::AggregationType]
        # @param end_date [Time]
        # @param start_date [Time]
        # @param profiles [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Reports::MdrUsageReportCreateResponse]
        #
        # @see Telnyx::Models::Reports::MdrUsageReportCreateParams
        def create(params)
          parsed, options = Telnyx::Reports::MdrUsageReportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "reports/mdr_usage_reports",
            headers: {"content-type" => "*/*"},
            body: parsed,
            model: Telnyx::Models::Reports::MdrUsageReportCreateResponse,
            options: options
          )
        end

        # Fetch a single messaging usage report by id
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Reports::MdrUsageReportRetrieveResponse]
        #
        # @see Telnyx::Models::Reports::MdrUsageReportRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["reports/mdr_usage_reports/%1$s", id],
            model: Telnyx::Models::Reports::MdrUsageReportRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Fetch all messaging usage reports. Usage reports are aggregated messaging data
        # for specified time period and breakdown
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Reports::MdrUsageReport>]
        #
        # @see Telnyx::Models::Reports::MdrUsageReportListParams
        def list(params = {})
          parsed, options = Telnyx::Reports::MdrUsageReportListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "reports/mdr_usage_reports",
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Reports::MdrUsageReport,
            options: options
          )
        end

        # Delete messaging usage report by id
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Reports::MdrUsageReportDeleteResponse]
        #
        # @see Telnyx::Models::Reports::MdrUsageReportDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["reports/mdr_usage_reports/%1$s", id],
            model: Telnyx::Models::Reports::MdrUsageReportDeleteResponse,
            options: params[:request_options]
          )
        end

        # Generate and fetch messaging usage report synchronously. This endpoint will both
        # generate and fetch the messaging report over a specified time period. No polling
        # is necessary but the response may take up to a couple of minutes.
        #
        # @overload fetch_sync(aggregation_type:, end_date: nil, profiles: nil, start_date: nil, request_options: {})
        #
        # @param aggregation_type [Symbol, Telnyx::Models::Reports::MdrUsageReportFetchSyncParams::AggregationType]
        # @param end_date [Time]
        # @param profiles [Array<String>]
        # @param start_date [Time]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Reports::MdrUsageReportFetchSyncResponse]
        #
        # @see Telnyx::Models::Reports::MdrUsageReportFetchSyncParams
        def fetch_sync(params)
          parsed, options = Telnyx::Reports::MdrUsageReportFetchSyncParams.dump_request(params)
          @client.request(
            method: :get,
            path: "reports/mdr_usage_reports/sync",
            query: parsed,
            model: Telnyx::Models::Reports::MdrUsageReportFetchSyncResponse,
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
