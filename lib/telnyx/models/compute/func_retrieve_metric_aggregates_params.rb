# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      # @see Telnyx::Resources::Compute::Funcs#retrieve_metric_aggregates
      class FuncRetrieveMetricAggregatesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute end_time
        #   Exclusive window end, UTC ISO 8601 with milliseconds
        #
        #   @return [Time]
        required :end_time, Time

        # @!attribute start_time
        #   Inclusive window start, UTC ISO 8601 with milliseconds
        #
        #   @return [Time]
        required :start_time, Time

        # @!attribute filter_edge_site
        #   Edge site filter
        #
        #   @return [String, nil]
        optional :filter_edge_site, String

        # @!attribute filter_namespace
        #   Kubernetes namespace filter
        #
        #   @return [String, nil]
        optional :filter_namespace, String

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(id:, end_time:, start_time:, filter_edge_site: nil, filter_namespace: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param id [String]
        #
        #   @param end_time [Time] Exclusive window end, UTC ISO 8601 with milliseconds
        #
        #   @param start_time [Time] Inclusive window start, UTC ISO 8601 with milliseconds
        #
        #   @param filter_edge_site [String] Edge site filter
        #
        #   @param filter_namespace [String] Kubernetes namespace filter
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
