# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class MetricCreateParams < Telnyx::Models::AI::Tests::TestFramework::V1::CreateAITestMetricRequest
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::MetricCreateParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                params(request_options: Telnyx::RequestOptions::OrHash).returns(
                  T.attached_class
                )
              end
              def self.new(request_options: {})
              end

              sig do
                override.returns({ request_options: Telnyx::RequestOptions })
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
