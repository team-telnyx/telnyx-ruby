# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class MetricRetrieveGenerateMetricsProgressParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Progress ID returned by the generate-test-metrics endpoint.
              sig { returns(String) }
              attr_accessor :progress_id

              sig do
                params(
                  progress_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Progress ID returned by the generate-test-metrics endpoint.
                progress_id:,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    progress_id: String,
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
