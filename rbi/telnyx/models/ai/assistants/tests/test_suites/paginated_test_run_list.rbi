# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          module TestSuites
            class PaginatedTestRunList < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::Tests::TestSuites::PaginatedTestRunList,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Array of test run objects for the current page.
              sig do
                returns(
                  T::Array[Telnyx::AI::Assistants::Tests::TestRunResponse]
                )
              end
              attr_accessor :data

              # Pagination metadata including total counts and current page info.
              sig { returns(Telnyx::AI::Assistants::Tests::TestSuites::Meta) }
              attr_reader :meta

              sig do
                params(
                  meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
                ).void
              end
              attr_writer :meta

              # Paginated list of test runs with metadata.
              #
              # Returns test run execution results with pagination support for handling large
              # numbers of test executions.
              sig do
                params(
                  data:
                    T::Array[
                      Telnyx::AI::Assistants::Tests::TestRunResponse::OrHash
                    ],
                  meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Array of test run objects for the current page.
                data:,
                # Pagination metadata including total counts and current page info.
                meta:
              )
              end

              sig do
                override.returns(
                  {
                    data:
                      T::Array[Telnyx::AI::Assistants::Tests::TestRunResponse],
                    meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
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
