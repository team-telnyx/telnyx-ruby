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

          sig do
            returns(
              T.nilable(Telnyx::AI::Missions::RunUpdateParams::Status::OrSymbol)
            )
          end
          attr_reader :status

          sig do
            params(
              status: Telnyx::AI::Missions::RunUpdateParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              mission_id: String,
              error: String,
              metadata: T::Hash[Symbol, T.anything],
              result_payload: T::Hash[Symbol, T.anything],
              result_summary: String,
              status: Telnyx::AI::Missions::RunUpdateParams::Status::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            mission_id:,
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
                error: String,
                metadata: T::Hash[Symbol, T.anything],
                result_payload: T::Hash[Symbol, T.anything],
                result_summary: String,
                status: Telnyx::AI::Missions::RunUpdateParams::Status::OrSymbol,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::AI::Missions::RunUpdateParams::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::AI::Missions::RunUpdateParams::Status::TaggedSymbol
              )
            RUNNING =
              T.let(
                :running,
                Telnyx::AI::Missions::RunUpdateParams::Status::TaggedSymbol
              )
            PAUSED =
              T.let(
                :paused,
                Telnyx::AI::Missions::RunUpdateParams::Status::TaggedSymbol
              )
            SUCCEEDED =
              T.let(
                :succeeded,
                Telnyx::AI::Missions::RunUpdateParams::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::AI::Missions::RunUpdateParams::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::AI::Missions::RunUpdateParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Missions::RunUpdateParams::Status::TaggedSymbol
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
