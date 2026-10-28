# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics#bulk_create
            class MetricBulkCreateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute body
              #
              #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::CreateAITestMetricRequest>]
              required :body,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::CreateAITestMetricRequest] }

              # @!method initialize(body:, request_options: {})
              #   @param body [Array<Telnyx::Models::AI::Tests::TestFramework::V1::CreateAITestMetricRequest>]
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
