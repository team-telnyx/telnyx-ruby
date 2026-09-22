# frozen_string_literal: true

module Telnyx
  module Resources
    class Compute
      class Funcs
        # @return [Telnyx::Resources::Compute::Funcs::Export]
        attr_reader :export

        # Returns logs oldest first. `type=runtime` (default) returns function
        # stdout/stderr. `type=invocations` returns one platform-generated record per HTTP
        # request served.
        #
        # @overload retrieve_logs(id, end_time: nil, limit: nil, start_time: nil, type: nil, request_options: {})
        #
        # @param id [String] Function ID
        #
        # @param end_time [Time] Return records at or before this RFC 3339 timestamp.
        #
        # @param limit [Integer] Maximum records to return.
        #
        # @param start_time [Time] Return records at or after this RFC 3339 timestamp.
        #
        # @param type [Symbol, Telnyx::Models::Compute::FuncRetrieveLogsParams::Type] Log stream to return.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse, Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse]
        #
        # @see Telnyx::Models::Compute::FuncRetrieveLogsParams
        def retrieve_logs(id, params = {})
          parsed, options = Telnyx::Compute::FuncRetrieveLogsParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["compute/funcs/%1$s/logs", id],
            query: query,
            model: Telnyx::Models::Compute::FuncRetrieveLogsResponse,
            options: options
          )
        end

        # Returns aggregate request, latency, CPU, memory, and resource-limit metrics for
        # a function over the requested window.
        #
        # @overload retrieve_metric_aggregates(id, end_time:, start_time:, filter_edge_site: nil, filter_namespace: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param id [String] Function ID
        #
        # @param end_time [Time] Exclusive window end, UTC ISO 8601 with milliseconds
        #
        # @param start_time [Time] Inclusive window start, UTC ISO 8601 with milliseconds
        #
        # @param filter_edge_site [String] Edge site filter
        #
        # @param filter_namespace [String] Kubernetes namespace filter
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse]
        #
        # @see Telnyx::Models::Compute::FuncRetrieveMetricAggregatesParams
        def retrieve_metric_aggregates(id, params)
          parsed, options = Telnyx::Compute::FuncRetrieveMetricAggregatesParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["compute/funcs/%1$s/metric_aggregates", id],
            query: query.transform_keys(
              filter_edge_site: "filter[edge_site]",
              filter_namespace: "filter[namespace]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            model: Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse,
            options: options
          )
        end

        # Lists a function's ship history newest first, including per-ship failure stage
        # and reason when recorded.
        #
        # @overload retrieve_revisions(id, page_number: nil, page_size: nil, request_options: {})
        #
        # @param id [String] Function ID
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Compute::FuncRetrieveRevisionsResponse]
        #
        # @see Telnyx::Models::Compute::FuncRetrieveRevisionsParams
        def retrieve_revisions(id, params = {})
          parsed, options = Telnyx::Compute::FuncRetrieveRevisionsParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["compute/funcs/%1$s/revisions", id],
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            model: Telnyx::Models::Compute::FuncRetrieveRevisionsResponse,
            options: options
          )
        end

        # Returns the latest ship outcome. The stage is `none` on success, `pending` while
        # building, or a failure stage such as `build`, `platform`, `pre_build`, `deploy`,
        # or `security_review`. This stage-neutral customer-facing path is an alias over
        # the same inspection resource as `build_log_inspection`.
        #
        # @overload retrieve_ship_inspection(id, request_options: {})
        #
        # @param id [String] Function ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse]
        #
        # @see Telnyx::Models::Compute::FuncRetrieveShipInspectionParams
        def retrieve_ship_inspection(id, params = {})
          @client.request(
            method: :get,
            path: ["compute/funcs/%1$s/ship_inspection", id],
            model: Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @export = Telnyx::Resources::Compute::Funcs::Export.new(client: client)
        end
      end
    end
  end
end
