# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class Serve < Telnyx::Internal::Type::BaseModel
          # @!attribute rollout
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::RolloutSlot>, nil]
          optional :rollout, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::RolloutSlot] }

          # @!attribute version_id
          #
          #   @return [String, nil]
          optional :version_id, String

          # @!method initialize(rollout: nil, version_id: nil)
          #   What a rule serves when matched.
          #
          #   Exactly one of:
          #
          #   - `version_id` — serve a specific version
          #   - `rollout` — weighted random across versions; weights must sum to less than
          #     100, with the leftover routing to the main version
          #
          #   @param rollout [Array<Telnyx::Models::AI::Assistants::RolloutSlot>]
          #   @param version_id [String]
        end
      end
    end
  end
end
