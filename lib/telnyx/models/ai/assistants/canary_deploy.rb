# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class CanaryDeploy < Telnyx::Internal::Type::BaseModel
          # @!attribute rules
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::RuleInput>, nil]
          optional :rules, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::RuleInput] }

          # @!method initialize(rules: nil)
          #   Create/update request body. Accepts:
          #
          #   - `rules` — canonical ordered list of routing rules
          #
          #   @param rules [Array<Telnyx::Models::AI::Assistants::RuleInput>]
        end
      end
    end
  end
end
