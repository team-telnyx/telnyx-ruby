# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class MetricBulkCreateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::MetricBulkCreateParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T::Array[
                    Telnyx::AI::Tests::TestFramework::V1::CreateAITestMetricRequest
                  ]
                )
              end
              attr_accessor :body

              sig do
                params(
                  body:
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::CreateAITestMetricRequest::OrHash
                    ],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(body:, request_options: {})
              end

              sig do
                override.returns(
                  {
                    body:
                      T::Array[
                        Telnyx::AI::Tests::TestFramework::V1::CreateAITestMetricRequest
                      ],
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
