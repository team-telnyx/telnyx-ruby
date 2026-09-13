# typed: strong

module Telnyx
  module Models
    module Compute
      class FuncRetrieveMetricAggregatesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Compute::FuncRetrieveMetricAggregatesParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Exclusive window end, UTC ISO 8601 with milliseconds
        sig { returns(Time) }
        attr_accessor :end_time

        # Inclusive window start, UTC ISO 8601 with milliseconds
        sig { returns(Time) }
        attr_accessor :start_time

        # Edge site filter
        sig { returns(T.nilable(String)) }
        attr_reader :filter_edge_site

        sig { params(filter_edge_site: String).void }
        attr_writer :filter_edge_site

        # Kubernetes namespace filter
        sig { returns(T.nilable(String)) }
        attr_reader :filter_namespace

        sig { params(filter_namespace: String).void }
        attr_writer :filter_namespace

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

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
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
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

        sig do
          override.returns(
            {
              id: String,
              end_time: Time,
              start_time: Time,
              filter_edge_site: String,
              filter_namespace: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
