# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class MetricRetrieveGenerateMetricsProgressResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :agent_id

              sig { returns(String) }
              attr_accessor :current_step

              sig { returns(T.nilable(String)) }
              attr_accessor :error

              sig do
                returns(
                  T::Array[
                    Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Metric
                  ]
                )
              end
              attr_accessor :metrics

              sig do
                returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status::TaggedSymbol
                )
              end
              attr_accessor :status

              sig do
                params(
                  agent_id: Integer,
                  current_step: String,
                  error: T.nilable(String),
                  metrics:
                    T::Array[
                      Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Metric::OrHash
                    ],
                  status:
                    Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(agent_id:, current_step:, error:, metrics:, status:)
              end

              sig do
                override.returns(
                  {
                    agent_id: Integer,
                    current_step: String,
                    error: T.nilable(String),
                    metrics:
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Metric
                      ],
                    status:
                      Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              class Metric < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Metric,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :agent

                sig { params(agent: Integer).void }
                attr_writer :agent

                sig { returns(T.nilable(String)) }
                attr_reader :description

                sig { params(description: String).void }
                attr_writer :description

                sig { returns(T.nilable(String)) }
                attr_reader :eval_type

                sig { params(eval_type: String).void }
                attr_writer :eval_type

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig { returns(T.nilable(T::Array[Integer])) }
                attr_reader :scenarios

                sig { params(scenarios: T::Array[Integer]).void }
                attr_writer :scenarios

                sig do
                  params(
                    agent: Integer,
                    description: String,
                    eval_type: String,
                    name: String,
                    scenarios: T::Array[Integer]
                  ).returns(T.attached_class)
                end
                def self.new(
                  agent: nil,
                  description: nil,
                  eval_type: nil,
                  name: nil,
                  scenarios: nil
                )
                end

                sig do
                  override.returns(
                    {
                      agent: Integer,
                      description: String,
                      eval_type: String,
                      name: String,
                      scenarios: T::Array[Integer]
                    }
                  )
                end
                def to_hash
                end
              end

              module Status
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                QUEUED =
                  T.let(
                    :queued,
                    Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status::TaggedSymbol
                  )
                PROCESSING =
                  T.let(
                    :processing,
                    Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status::TaggedSymbol
                  )
                COMPLETED =
                  T.let(
                    :completed,
                    Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status::TaggedSymbol
                  )
                FAILED =
                  T.let(
                    :failed,
                    Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
