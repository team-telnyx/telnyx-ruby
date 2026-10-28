# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class AiagentListResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Tests::TestFramework::V1::AiagentListResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :count

              # Link to the next page of results, or null.
              sig { returns(T.nilable(String)) }
              attr_accessor :next_

              # Link to the previous page of results, or null.
              sig { returns(T.nilable(String)) }
              attr_accessor :previous

              sig do
                returns(
                  T::Array[Telnyx::AI::Tests::TestFramework::V1::TestAgent]
                )
              end
              attr_accessor :results

              sig do
                params(
                  count: Integer,
                  next_: T.nilable(String),
                  previous: T.nilable(String),
                  results:
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestAgent::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                count:,
                # Link to the next page of results, or null.
                next_:,
                # Link to the previous page of results, or null.
                previous:,
                results:
              )
              end

              sig do
                override.returns(
                  {
                    count: Integer,
                    next_: T.nilable(String),
                    previous: T.nilable(String),
                    results:
                      T::Array[Telnyx::AI::Tests::TestFramework::V1::TestAgent]
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
