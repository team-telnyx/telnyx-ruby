# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Teams#create
      class TeamCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute name
        #   A label for people.
        #
        #   @return [String]
        required :name, String

        # @!attribute budget_resets_every
        #   How often the spend resets: a number and a unit, `s`, `m`, `h`, or `d`.
        #
        #   @return [String, nil]
        optional :budget_resets_every, String, nil?: true

        # @!attribute max_budget
        #   The most the team's keys may spend together, in USD.
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute models
        #   The models the team's keys may use. Leave it out to allow every model.
        #
        #   @return [Array<String>, nil]
        optional :models, Telnyx::Internal::Type::ArrayOf[String], nil?: true

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

        # @!method initialize(instance_id:, name:, budget_resets_every: nil, max_budget: nil, models: nil, requests_per_minute: nil, tokens_per_minute: nil, request_options: {})
        #   @param instance_id [String]
        #
        #   @param name [String] A label for people.
        #
        #   @param budget_resets_every [String, nil] How often the spend resets: a number and a unit, `s`, `m`, `h`, or `d`.
        #
        #   @param max_budget [Float, nil] The most the team's keys may spend together, in USD.
        #
        #   @param models [Array<String>, nil] The models the team's keys may use. Leave it out to allow every model.
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
