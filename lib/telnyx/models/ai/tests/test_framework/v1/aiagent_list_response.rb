# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Aiagents#list
            class AiagentListResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute count
              #
              #   @return [Integer]
              required :count, Integer

              # @!attribute next_
              #   Link to the next page of results, or null.
              #
              #   @return [String, nil]
              required :next_, String, api_name: :next, nil?: true

              # @!attribute previous
              #   Link to the previous page of results, or null.
              #
              #   @return [String, nil]
              required :previous, String, nil?: true

              # @!attribute results
              #
              #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::TestAgent>]
              required :results, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::TestAgent] }

              # @!method initialize(count:, next_:, previous:, results:)
              #   @param count [Integer]
              #
              #   @param next_ [String, nil] Link to the next page of results, or null.
              #
              #   @param previous [String, nil] Link to the previous page of results, or null.
              #
              #   @param results [Array<Telnyx::Models::AI::Tests::TestFramework::V1::TestAgent>]
            end
          end
        end
      end
    end
  end
end
