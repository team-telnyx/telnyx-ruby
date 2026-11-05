# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Teams#update
      class TeamUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute team_id
        #
        #   @return [String]
        required :team_id, String

        # @!attribute blocked
        #   `true` makes the instance refuse every key in the team; `false` lets them
        #   through again.
        #
        #   @return [Boolean, nil]
        optional :blocked, Telnyx::Internal::Type::Boolean

        # @!attribute budget_resets_every
        #   How often the spend resets.
        #
        #   @return [String, nil]
        optional :budget_resets_every, String, nil?: true

        # @!attribute max_budget
        #   The most the team's keys may spend together, in USD.
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute models
        #   The models the team's keys may use. `[]` allows every model.
        #
        #   @return [Array<String>, nil]
        optional :models, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute name
        #   A label for people.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute requests_per_minute
        #   The most requests the team's keys may make per minute, together.
        #
        #   @return [Integer, nil]
        optional :requests_per_minute, Integer, nil?: true

        # @!attribute tokens_per_minute
        #   The most tokens the team's keys may use per minute, together.
        #
        #   @return [Integer, nil]
        optional :tokens_per_minute, Integer, nil?: true

        # @!method initialize(instance_id:, team_id:, blocked: nil, budget_resets_every: nil, max_budget: nil, models: nil, name: nil, requests_per_minute: nil, tokens_per_minute: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::TeamUpdateParams} for more details.
        #
        #   @param instance_id [String]
        #
        #   @param team_id [String]
        #
        #   @param blocked [Boolean] `true` makes the instance refuse every key in the team; `false` lets them throug
        #
        #   @param budget_resets_every [String, nil] How often the spend resets.
        #
        #   @param max_budget [Float, nil] The most the team's keys may spend together, in USD.
        #
        #   @param models [Array<String>] The models the team's keys may use. `[]` allows every model.
        #
        #   @param name [String] A label for people.
        #
        #   @param requests_per_minute [Integer, nil] The most requests the team's keys may make per minute, together.
        #
        #   @param tokens_per_minute [Integer, nil] The most tokens the team's keys may use per minute, together.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
