# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            MetricBulkCreateResponse =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::Tests::TestFramework::V1::AITestMetric
                ],
                Telnyx::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
