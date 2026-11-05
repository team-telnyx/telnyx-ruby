# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayTeam < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the team.
        #
        #   @return [String]
        required :id, String

        # @!attribute blocked
        #   Whether the instance refuses every key in the team.
        #
        #   @return [Boolean]
        required :blocked, Telnyx::Internal::Type::Boolean

        # @!attribute budget_resets_at
        #   When the team's spend next resets.
        #
        #   @return [Time, nil]
        required :budget_resets_at, Time, nil?: true

        # @!attribute budget_resets_every
        #   How often the team's spend resets, such as `30d`.
        #
        #   @return [String, nil]
        required :budget_resets_every, String, nil?: true

        # @!attribute created_at
        #   When the team was created.
        #
        #   @return [Time, nil]
        required :created_at, Time, nil?: true

        # @!attribute max_budget
        #   The most the team's keys may spend together, in USD, until the budget resets.
        #
        #   @return [Float, nil]
        required :max_budget, Float, nil?: true

        # @!attribute models
        #   The models the team's keys may use. Empty means every model the instance serves.
        #
        #   @return [Array<String>]
        required :models, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute name
        #   A label for people. Names need not be unique.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute requests_per_minute
        #   The most requests the team's keys may make per minute, together.
        #
        #   @return [Integer, nil]
        required :requests_per_minute, Integer, nil?: true

        # @!attribute spend
        #   What the team's keys have spent since the budget last reset, in USD.
        #
        #   @return [Float]
        required :spend, Float

        # @!attribute tokens_per_minute
        #   The most tokens the team's keys may use per minute, together.
        #
        #   @return [Integer, nil]
        required :tokens_per_minute, Integer, nil?: true

        # @!method initialize(id:, blocked:, budget_resets_at:, budget_resets_every:, created_at:, max_budget:, models:, name:, requests_per_minute:, spend:, tokens_per_minute:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayTeam} for more details.
        #
        #   A team on an instance: a model list, a budget, and rate limits that its keys
        #   share.
        #
        #   @param id [String] Identifies the team.
        #
        #   @param blocked [Boolean] Whether the instance refuses every key in the team.
        #
        #   @param budget_resets_at [Time, nil] When the team's spend next resets.
        #
        #   @param budget_resets_every [String, nil] How often the team's spend resets, such as `30d`.
        #
        #   @param created_at [Time, nil] When the team was created.
        #
        #   @param max_budget [Float, nil] The most the team's keys may spend together, in USD, until the budget resets.
        #
        #   @param models [Array<String>] The models the team's keys may use. Empty means every model the instance serves.
        #
        #   @param name [String, nil] A label for people. Names need not be unique.
        #
        #   @param requests_per_minute [Integer, nil] The most requests the team's keys may make per minute, together.
        #
        #   @param spend [Float] What the team's keys have spent since the budget last reset, in USD.
        #
        #   @param tokens_per_minute [Integer, nil] The most tokens the team's keys may use per minute, together.
      end
    end

    AgentGatewayTeam = AgentGateways::AgentGatewayTeam
  end
end
