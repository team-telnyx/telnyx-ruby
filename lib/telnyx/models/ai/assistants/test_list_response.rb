# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tests#list
        class TestListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   Array of assistant test objects for the current page.
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::AssistantTest>]
          required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::AssistantTest] }

          # @!attribute meta
          #   Pagination metadata including total counts and current page info.
          #
          #   @return [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
          required :meta, -> { Telnyx::AI::Assistants::Tests::TestSuites::Meta }

          # @!method initialize(data:, meta:)
          #   Paginated list of assistant tests with metadata.
          #
          #   Returns a subset of tests based on pagination parameters along with metadata for
          #   implementing pagination controls in the UI.
          #
          #   @param data [Array<Telnyx::Models::AI::Assistants::AssistantTest>] Array of assistant test objects for the current page.
          #
          #   @param meta [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta] Pagination metadata including total counts and current page info.
        end
      end
    end
  end
end
