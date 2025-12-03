# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          module TestSuites
            class PaginatedTestRunList < Telnyx::Internal::Type::BaseModel
              # @!attribute data
              #   Array of test run objects for the current page.
              #
              #   @return [Array<Telnyx::Models::AI::Assistants::Tests::TestRunResponse>]
              required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Tests::TestRunResponse] }

              # @!attribute meta
              #   Pagination metadata including total counts and current page info.
              #
              #   @return [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
              required :meta, -> { Telnyx::AI::Assistants::Tests::TestSuites::Meta }

              # @!method initialize(data:, meta:)
              #   Paginated list of test runs with metadata.
              #
              #   Returns test run execution results with pagination support for handling large
              #   numbers of test executions.
              #
              #   @param data [Array<Telnyx::Models::AI::Assistants::Tests::TestRunResponse>] Array of test run objects for the current page.
              #
              #   @param meta [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta] Pagination metadata including total counts and current page info.
            end
          end
        end
      end
    end
  end
end
