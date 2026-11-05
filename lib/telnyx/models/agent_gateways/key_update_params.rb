# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Keys#update
      class KeyUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute key_id
        #
        #   @return [String]
        required :key_id, String

        # @!attribute blocked
        #   `true` makes the instance refuse the key; `false` lets it through again.
        #
        #   @return [Boolean, nil]
        optional :blocked, Telnyx::Internal::Type::Boolean

        # @!attribute budget_resets_every
        #   How often the spend resets.
        #
        #   @return [String, nil]
        optional :budget_resets_every, String, nil?: true

        # @!attribute expires_in
        #   How long from now until the key stops working.
        #
        #   @return [String, nil]
        optional :expires_in, String, nil?: true

        # @!attribute max_budget
        #   The most the key may spend, in USD.
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute max_parallel_requests
        #   The most requests the key may have in flight at once.
        #
        #   @return [Integer, nil]
        optional :max_parallel_requests, Integer, nil?: true

        # @!attribute models
        #   The models the key may use. `[]` allows every model.
        #
        #   @return [Array<String>, nil]
        optional :models, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute name
        #   A label for people.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute requests_per_minute
        #   The most requests the key may make per minute.
        #
        #   @return [Integer, nil]
        optional :requests_per_minute, Integer, nil?: true

        # @!attribute team_id
        #   Move the key to this team, or `null` to leave its team.
        #
        #   @return [String, nil]
        optional :team_id, String, nil?: true

        # @!attribute tokens_per_minute
        #   The most tokens the key may use per minute.
        #
        #   @return [Integer, nil]
        optional :tokens_per_minute, Integer, nil?: true

        # @!method initialize(instance_id:, key_id:, blocked: nil, budget_resets_every: nil, expires_in: nil, max_budget: nil, max_parallel_requests: nil, models: nil, name: nil, requests_per_minute: nil, team_id: nil, tokens_per_minute: nil, request_options: {})
        #   @param instance_id [String]
        #
        #   @param key_id [String]
        #
        #   @param blocked [Boolean] `true` makes the instance refuse the key; `false` lets it through again.
        #
        #   @param budget_resets_every [String, nil] How often the spend resets.
        #
        #   @param expires_in [String, nil] How long from now until the key stops working.
        #
        #   @param max_budget [Float, nil] The most the key may spend, in USD.
        #
        #   @param max_parallel_requests [Integer, nil] The most requests the key may have in flight at once.
        #
        #   @param models [Array<String>] The models the key may use. `[]` allows every model.
        #
        #   @param name [String] A label for people.
        #
        #   @param requests_per_minute [Integer, nil] The most requests the key may make per minute.
        #
        #   @param team_id [String, nil] Move the key to this team, or `null` to leave its team.
        #
        #   @param tokens_per_minute [Integer, nil] The most tokens the key may use per minute.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
