# typed: strong

module Telnyx
  module Resources
    class Compute
      class Funcs
        sig { returns(Telnyx::Resources::Compute::Funcs::Export) }
        attr_reader :export

        # Returns logs oldest first. `type=runtime` (default) returns function
        # stdout/stderr. `type=invocations` returns one platform-generated record per HTTP
        # request served.
        sig do
          params(
            id: String,
            end_time: Time,
            limit: Integer,
            start_time: Time,
            type: Telnyx::Compute::FuncRetrieveLogsParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Compute::FuncRetrieveLogsResponse::Variants)
        end
        def retrieve_logs(
          # Function ID
          id,
          # Return records at or before this RFC 3339 timestamp.
          end_time: nil,
          # Maximum records to return.
          limit: nil,
          # Return records at or after this RFC 3339 timestamp.
          start_time: nil,
          # Log stream to return.
          type: nil,
          request_options: {}
        )
        end

        # Returns aggregate request, latency, CPU, memory, and resource-limit metrics for
        # a function over the requested window.
        sig do
          params(
            id: String,
            end_time: Time,
            start_time: Time,
            filter_edge_site: String,
            filter_namespace: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse
          )
        end
        def retrieve_metric_aggregates(
          # Function ID
          id,
          # Exclusive window end, UTC ISO 8601 with milliseconds
          end_time:,
          # Inclusive window start, UTC ISO 8601 with milliseconds
          start_time:,
          # Edge site filter
          filter_edge_site: nil,
          # Kubernetes namespace filter
          filter_namespace: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        # Lists a function's ship history newest first, including per-ship failure stage
        # and reason when recorded.
        sig do
          params(
            id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Compute::FuncRetrieveRevisionsResponse)
        end
        def retrieve_revisions(
          # Function ID
          id,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        # Returns the latest ship outcome. The stage is `none` on success, `pending` while
        # building, or a failure stage such as `build`, `platform`, `pre_build`, `deploy`,
        # or `security_review`. This stage-neutral customer-facing path is an alias over
        # the same inspection resource as `build_log_inspection`.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse)
        end
        def retrieve_ship_inspection(
          # Function ID
          id,
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
