# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class MetricGenerateMetricsParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::MetricGenerateMetricsParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Test agent to suggest metrics for.
              sig { returns(Integer) }
              attr_accessor :agent_id

              # How many metrics to suggest.
              sig { returns(Integer) }
              attr_accessor :num_metrics

              # Scenario IDs to base the suggestions on.
              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :scenarios

              sig { params(scenarios: T::Array[Integer]).void }
              attr_writer :scenarios

              sig do
                params(
                  agent_id: Integer,
                  num_metrics: Integer,
                  scenarios: T::Array[Integer],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Test agent to suggest metrics for.
                agent_id:,
                # How many metrics to suggest.
                num_metrics:,
                # Scenario IDs to base the suggestions on.
                scenarios: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    agent_id: Integer,
                    num_metrics: Integer,
                    scenarios: T::Array[Integer],
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
    end
  end
end
