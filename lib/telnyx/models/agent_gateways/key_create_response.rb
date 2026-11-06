# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Keys#create
      class KeyCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A key that was just issued: the only response that carries its value.
        #
        #   @return [Telnyx::Models::AgentGateways::KeyCreateResponse::Data]
        required :data, -> { Telnyx::Models::AgentGateways::KeyCreateResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AgentGateways::KeyCreateResponse::Data] A key that was just issued: the only response that carries its value.

        # @see Telnyx::Models::AgentGateways::KeyCreateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the key. It is a 64-character hash the instance stores in place of
          #   the key's value.
          #
          #   @return [String]
          required :id, String

          # @!attribute blocked
          #   Whether the instance refuses the key.
          #
          #   @return [Boolean]
          required :blocked, Telnyx::Internal::Type::Boolean

          # @!attribute budget_resets_at
          #   When the key's spend next resets.
          #
          #   @return [Time, nil]
          required :budget_resets_at, Time, nil?: true

          # @!attribute budget_resets_every
          #   How often the key's spend resets, such as `30d`.
          #
          #   @return [String, nil]
          required :budget_resets_every, String, nil?: true

          # @!attribute created_at
          #   When the key was issued.
          #
          #   @return [Time, nil]
          required :created_at, Time, nil?: true

          # @!attribute expires_at
          #   When the key stops working; `null` when it does not expire.
          #
          #   @return [Time, nil]
          required :expires_at, Time, nil?: true

          # @!attribute key
          #   The key's value, sent as `Authorization: Bearer <key>` to the instance. Shown
          #   only in this response.
          #
          #   @return [String]
          required :key, String

          # @!attribute max_budget
          #   The most the key may spend, in USD, until its budget resets.
          #
          #   @return [Float, nil]
          required :max_budget, Float, nil?: true

          # @!attribute max_parallel_requests
          #   The most requests the key may have in flight at once.
          #
          #   @return [Integer, nil]
          required :max_parallel_requests, Integer, nil?: true

          # @!attribute models
          #   The models the key may use. Empty means every model the instance serves.
          #
          #   @return [Array<String>]
          required :models, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute name
          #   A label for people; `null` when none was given.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute requests_per_minute
          #   The most requests the key may make per minute.
          #
          #   @return [Integer, nil]
          required :requests_per_minute, Integer, nil?: true

          # @!attribute spend
          #   What the key has spent since its budget last reset, in USD.
          #
          #   @return [Float]
          required :spend, Float

          # @!attribute team_id
          #   The team the key belongs to, if any.
          #
          #   @return [String, nil]
          required :team_id, String, nil?: true

          # @!attribute tokens_per_minute
          #   The most tokens the key may use per minute.
          #
          #   @return [Integer, nil]
          required :tokens_per_minute, Integer, nil?: true

          # @!method initialize(id:, blocked:, budget_resets_at:, budget_resets_every:, created_at:, expires_at:, key:, max_budget:, max_parallel_requests:, models:, name:, requests_per_minute:, spend:, team_id:, tokens_per_minute:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AgentGateways::KeyCreateResponse::Data} for more details.
          #
          #   A key that was just issued: the only response that carries its value.
          #
          #   @param id [String] Identifies the key. It is a 64-character hash the instance stores in place of th
          #
          #   @param blocked [Boolean] Whether the instance refuses the key.
          #
          #   @param budget_resets_at [Time, nil] When the key's spend next resets.
          #
          #   @param budget_resets_every [String, nil] How often the key's spend resets, such as `30d`.
          #
          #   @param created_at [Time, nil] When the key was issued.
          #
          #   @param expires_at [Time, nil] When the key stops working; `null` when it does not expire.
          #
          #   @param key [String] The key's value, sent as `Authorization: Bearer <key>` to the instance. Shown on
          #
          #   @param max_budget [Float, nil] The most the key may spend, in USD, until its budget resets.
          #
          #   @param max_parallel_requests [Integer, nil] The most requests the key may have in flight at once.
          #
          #   @param models [Array<String>] The models the key may use. Empty means every model the instance serves.
          #
          #   @param name [String, nil] A label for people; `null` when none was given.
          #
          #   @param requests_per_minute [Integer, nil] The most requests the key may make per minute.
          #
          #   @param spend [Float] What the key has spent since its budget last reset, in USD.
          #
          #   @param team_id [String, nil] The team the key belongs to, if any.
          #
          #   @param tokens_per_minute [Integer, nil] The most tokens the key may use per minute.
        end
      end
    end
  end
end
