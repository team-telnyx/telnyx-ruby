# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class RuleInput < Telnyx::Internal::Type::BaseModel
          # @!attribute serve
          #   What a rule serves when matched.
          #
          #   Exactly one of:
          #
          #   - `version_id` — serve a specific version
          #   - `rollout` — weighted random across versions; weights must sum to less than
          #     100, with the leftover routing to the main version
          #
          #   @return [Telnyx::Models::AI::Assistants::Serve]
          required :serve, -> { Telnyx::AI::Assistants::Serve }

          # @!attribute match
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::Clause>, nil]
          optional :match, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Clause] }

          # @!method initialize(serve:, match: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::RuleInput} for more details.
          #
          #   A targeting rule: `match` clauses (AND) gate `serve`.
          #
          #   An empty `match` is a catch-all (always fires).
          #
          #   @param serve [Telnyx::Models::AI::Assistants::Serve] What a rule serves when matched.
          #
          #   @param match [Array<Telnyx::Models::AI::Assistants::Clause>]
        end
      end
    end
  end
end
