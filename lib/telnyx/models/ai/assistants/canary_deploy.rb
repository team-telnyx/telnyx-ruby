# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class CanaryDeploy < Telnyx::Internal::Type::BaseModel
          # @!attribute rules
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::CanaryDeploy::Rule>, nil]
          optional :rules, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::CanaryDeploy::Rule] }

          # @!method initialize(rules: nil)
          #   Create/update request body. Accepts:
          #
          #   - `rules` — canonical ordered list of routing rules
          #
          #   @param rules [Array<Telnyx::Models::AI::Assistants::CanaryDeploy::Rule>]

          class Rule < Telnyx::Internal::Type::BaseModel
            # @!attribute serve
            #   What a rule serves when matched.
            #
            #   Exactly one of:
            #
            #   - `version_id` — serve a specific version
            #   - `rollout` — weighted random across versions; weights must sum to less than
            #     100, with the leftover routing to the main version
            #
            #   @return [Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Serve]
            required :serve, -> { Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve }

            # @!attribute match
            #
            #   @return [Array<Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Match>, nil]
            optional :match, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::CanaryDeploy::Rule::Match] }

            # @!method initialize(serve:, match: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Assistants::CanaryDeploy::Rule} for more details.
            #
            #   A targeting rule: `match` clauses (AND) gate `serve`.
            #
            #   An empty `match` is a catch-all (always fires).
            #
            #   @param serve [Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Serve] What a rule serves when matched.
            #
            #   @param match [Array<Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Match>]

            # @see Telnyx::Models::AI::Assistants::CanaryDeploy::Rule#serve
            class Serve < Telnyx::Internal::Type::BaseModel
              # @!attribute rollout
              #
              #   @return [Array<Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Serve::Rollout>, nil]
              optional :rollout,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve::Rollout] }

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
              #   @param rollout [Array<Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Serve::Rollout>]
              #   @param version_id [String]

              class Rollout < Telnyx::Internal::Type::BaseModel
                # @!attribute version_id
                #
                #   @return [String]
                required :version_id, String

                # @!attribute weight
                #
                #   @return [Float]
                required :weight, Float

                # @!method initialize(version_id:, weight:)
                #   One slot in a percentage rollout.
                #
                #   @param version_id [String]
                #   @param weight [Float]
              end
            end

            class Match < Telnyx::Internal::Type::BaseModel
              # @!attribute attribute
              #   Attribute name from the routing context
              #
              #   @return [String]
              required :attribute, String

              # @!attribute operator
              #   Match operator
              #
              #   @return [Symbol, Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Match::Operator]
              required :operator, enum: -> { Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator }

              # @!attribute values
              #
              #   @return [Array<String>]
              required :values, Telnyx::Internal::Type::ArrayOf[String]

              # @!method initialize(attribute:, operator:, values:)
              #   A single attribute/operator/values check.
              #
              #   A clause matches when the routing context's value for `attribute` satisfies
              #   `operator` against any of `values`.
              #
              #   @param attribute [String] Attribute name from the routing context
              #
              #   @param operator [Symbol, Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Match::Operator] Match operator
              #
              #   @param values [Array<String>]

              # Match operator
              #
              # @see Telnyx::Models::AI::Assistants::CanaryDeploy::Rule::Match#operator
              module Operator
                extend Telnyx::Internal::Type::Enum

                IN = :in
                NOT_IN = :not_in
                STARTS_WITH = :starts_with

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
