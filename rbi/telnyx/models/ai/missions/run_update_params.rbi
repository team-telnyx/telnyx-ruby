# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        class RunUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Missions::RunUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :mission_id

          sig { returns(String) }
          attr_accessor :run_id

          sig { returns(T.nilable(String)) }
          attr_reader :error

          sig { params(error: String).void }
          attr_writer :error

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, T.anything]).void }
          attr_writer :metadata

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :result_payload

          sig { params(result_payload: T::Hash[Symbol, T.anything]).void }
          attr_writer :result_payload

          sig { returns(T.nilable(String)) }
          attr_reader :result_summary

          sig { params(result_summary: String).void }
          attr_writer :result_summary

          sig { returns(T.nilable(Telnyx::AI::Missions::RunStatus::OrSymbol)) }
          attr_reader :status

          sig { params(status: Telnyx::AI::Missions::RunStatus::OrSymbol).void }
          attr_writer :status

          sig do
            params(
              mission_id: String,
              run_id: String,
              error: String,
              metadata: T::Hash[Symbol, T.anything],
              result_payload: T::Hash[Symbol, T.anything],
              result_summary: String,
              status: Telnyx::AI::Missions::RunStatus::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            mission_id:,
            run_id:,
            error: nil,
            metadata: nil,
            result_payload: nil,
            result_summary: nil,
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                mission_id: String,
                run_id: String,
                error: String,
                metadata: T::Hash[Symbol, T.anything],
                result_payload: T::Hash[Symbol, T.anything],
                result_summary: String,
                status: Telnyx::AI::Missions::RunStatus::OrSymbol,
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
