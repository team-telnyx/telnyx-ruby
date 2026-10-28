# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics#retrieve_generate_metrics_progress
            class MetricRetrieveGenerateMetricsProgressParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute progress_id
              #   Progress ID returned by the generate-test-metrics endpoint.
              #
              #   @return [String]
              required :progress_id, String

              # @!method initialize(progress_id:, request_options: {})
              #   @param progress_id [String] Progress ID returned by the generate-test-metrics endpoint.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
