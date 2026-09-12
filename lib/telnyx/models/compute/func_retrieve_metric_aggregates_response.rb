# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      # @see Telnyx::Resources::Compute::Funcs#retrieve_metric_aggregates
      class FuncRetrieveMetricAggregatesResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Compute::FunctionsObservabilityPaginationMeta, nil]
        optional :meta, -> { Telnyx::Compute::FunctionsObservabilityPaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data>]
        #   @param meta [Telnyx::Models::Compute::FunctionsObservabilityPaginationMeta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute cpu_used_cores_avg
          #
          #   @return [Float, nil]
          optional :cpu_used_cores_avg, Float, nil?: true

          # @!attribute cpu_used_cores_max
          #
          #   @return [Float, nil]
          optional :cpu_used_cores_max, Float, nil?: true

          # @!attribute end_time
          #
          #   @return [Time, nil]
          optional :end_time, Time

          # @!attribute function_id
          #
          #   @return [String, nil]
          optional :function_id, String

          # @!attribute function_name
          #
          #   @return [String, nil]
          optional :function_name, String

          # @!attribute memory_used_bytes_avg
          #
          #   @return [Float, nil]
          optional :memory_used_bytes_avg, Float, nil?: true

          # @!attribute memory_used_bytes_max
          #
          #   @return [Float, nil]
          optional :memory_used_bytes_max, Float, nil?: true

          # @!attribute product
          #
          #   @return [String, nil]
          optional :product, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute request_client_error_rate
          #
          #   @return [Float, nil]
          optional :request_client_error_rate, Float, nil?: true

          # @!attribute request_count
          #
          #   @return [Float, nil]
          optional :request_count, Float, nil?: true

          # @!attribute request_error_rate
          #
          #   @return [Float, nil]
          optional :request_error_rate, Float, nil?: true

          # @!attribute request_latency_avg_ms
          #
          #   @return [Float, nil]
          optional :request_latency_avg_ms, Float, nil?: true

          # @!attribute request_latency_p50_ms
          #
          #   @return [Float, nil]
          optional :request_latency_p50_ms, Float, nil?: true

          # @!attribute request_latency_p95_ms
          #
          #   @return [Float, nil]
          optional :request_latency_p95_ms, Float, nil?: true

          # @!attribute request_latency_p99_ms
          #
          #   @return [Float, nil]
          optional :request_latency_p99_ms, Float, nil?: true

          # @!attribute request_success_rate
          #
          #   @return [Float, nil]
          optional :request_success_rate, Float, nil?: true

          # @!attribute start_time
          #
          #   @return [Time, nil]
          optional :start_time, Time

          # @!method initialize(cpu_used_cores_avg: nil, cpu_used_cores_max: nil, end_time: nil, function_id: nil, function_name: nil, memory_used_bytes_avg: nil, memory_used_bytes_max: nil, product: nil, record_type: nil, request_client_error_rate: nil, request_count: nil, request_error_rate: nil, request_latency_avg_ms: nil, request_latency_p50_ms: nil, request_latency_p95_ms: nil, request_latency_p99_ms: nil, request_success_rate: nil, start_time: nil)
          #   @param cpu_used_cores_avg [Float, nil]
          #   @param cpu_used_cores_max [Float, nil]
          #   @param end_time [Time]
          #   @param function_id [String]
          #   @param function_name [String]
          #   @param memory_used_bytes_avg [Float, nil]
          #   @param memory_used_bytes_max [Float, nil]
          #   @param product [String]
          #   @param record_type [String]
          #   @param request_client_error_rate [Float, nil]
          #   @param request_count [Float, nil]
          #   @param request_error_rate [Float, nil]
          #   @param request_latency_avg_ms [Float, nil]
          #   @param request_latency_p50_ms [Float, nil]
          #   @param request_latency_p95_ms [Float, nil]
          #   @param request_latency_p99_ms [Float, nil]
          #   @param request_success_rate [Float, nil]
          #   @param start_time [Time]
        end
      end
    end
  end
end
