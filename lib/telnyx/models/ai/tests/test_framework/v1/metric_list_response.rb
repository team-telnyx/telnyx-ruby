# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @type [Telnyx::Internal::Type::Converter]
            MetricListResponse =
              Telnyx::Internal::Type::ArrayOf[-> { Telnyx::AI::Tests::TestFramework::V1::AITestMetric }]
          end
        end
      end
    end
  end
end
