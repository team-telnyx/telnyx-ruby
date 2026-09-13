# typed: strong

module Telnyx
  module Models
    module Compute
      class FuncRetrieveMetricAggregatesResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          returns(
            T.nilable(Telnyx::Compute::FunctionsObservabilityPaginationMeta)
          )
        end
        attr_reader :meta

        sig do
          params(
            meta: Telnyx::Compute::FunctionsObservabilityPaginationMeta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data::OrHash
              ],
            meta: Telnyx::Compute::FunctionsObservabilityPaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data
                ],
              meta: Telnyx::Compute::FunctionsObservabilityPaginationMeta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Float)) }
          attr_accessor :cpu_used_cores_avg

          sig { returns(T.nilable(Float)) }
          attr_accessor :cpu_used_cores_max

          sig { returns(T.nilable(Time)) }
          attr_reader :end_time

          sig { params(end_time: Time).void }
          attr_writer :end_time

          sig { returns(T.nilable(String)) }
          attr_reader :function_id

          sig { params(function_id: String).void }
          attr_writer :function_id

          sig { returns(T.nilable(String)) }
          attr_reader :function_name

          sig { params(function_name: String).void }
          attr_writer :function_name

          sig { returns(T.nilable(Float)) }
          attr_accessor :memory_used_bytes_avg

          sig { returns(T.nilable(Float)) }
          attr_accessor :memory_used_bytes_max

          sig { returns(T.nilable(String)) }
          attr_reader :product

          sig { params(product: String).void }
          attr_writer :product

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig { returns(T.nilable(Float)) }
          attr_accessor :request_client_error_rate

          sig { returns(T.nilable(Float)) }
          attr_accessor :request_count

          sig { returns(T.nilable(Float)) }
          attr_accessor :request_error_rate

          sig { returns(T.nilable(Float)) }
          attr_accessor :request_latency_avg_ms

          sig { returns(T.nilable(Float)) }
          attr_accessor :request_latency_p50_ms

          sig { returns(T.nilable(Float)) }
          attr_accessor :request_latency_p95_ms

          sig { returns(T.nilable(Float)) }
          attr_accessor :request_latency_p99_ms

          sig { returns(T.nilable(Float)) }
          attr_accessor :request_success_rate

          sig { returns(T.nilable(Time)) }
          attr_reader :start_time

          sig { params(start_time: Time).void }
          attr_writer :start_time

          sig do
            params(
              cpu_used_cores_avg: T.nilable(Float),
              cpu_used_cores_max: T.nilable(Float),
              end_time: Time,
              function_id: String,
              function_name: String,
              memory_used_bytes_avg: T.nilable(Float),
              memory_used_bytes_max: T.nilable(Float),
              product: String,
              record_type: String,
              request_client_error_rate: T.nilable(Float),
              request_count: T.nilable(Float),
              request_error_rate: T.nilable(Float),
              request_latency_avg_ms: T.nilable(Float),
              request_latency_p50_ms: T.nilable(Float),
              request_latency_p95_ms: T.nilable(Float),
              request_latency_p99_ms: T.nilable(Float),
              request_success_rate: T.nilable(Float),
              start_time: Time
            ).returns(T.attached_class)
          end
          def self.new(
            cpu_used_cores_avg: nil,
            cpu_used_cores_max: nil,
            end_time: nil,
            function_id: nil,
            function_name: nil,
            memory_used_bytes_avg: nil,
            memory_used_bytes_max: nil,
            product: nil,
            record_type: nil,
            request_client_error_rate: nil,
            request_count: nil,
            request_error_rate: nil,
            request_latency_avg_ms: nil,
            request_latency_p50_ms: nil,
            request_latency_p95_ms: nil,
            request_latency_p99_ms: nil,
            request_success_rate: nil,
            start_time: nil
          )
          end

          sig do
            override.returns(
              {
                cpu_used_cores_avg: T.nilable(Float),
                cpu_used_cores_max: T.nilable(Float),
                end_time: Time,
                function_id: String,
                function_name: String,
                memory_used_bytes_avg: T.nilable(Float),
                memory_used_bytes_max: T.nilable(Float),
                product: String,
                record_type: String,
                request_client_error_rate: T.nilable(Float),
                request_count: T.nilable(Float),
                request_error_rate: T.nilable(Float),
                request_latency_avg_ms: T.nilable(Float),
                request_latency_p50_ms: T.nilable(Float),
                request_latency_p95_ms: T.nilable(Float),
                request_latency_p99_ms: T.nilable(Float),
                request_success_rate: T.nilable(Float),
                start_time: Time
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
