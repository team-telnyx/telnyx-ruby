# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::TokenKeys#create
      class TokenKeyCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute token_group_id
        #
        #   @return [String]
        required :token_group_id, String

        # @!attribute idempotency_key
        #
        #   @return [String]
        required :idempotency_key, String

        # @!attribute allowed_models
        #
        #   @return [Array<String>, nil]
        optional :allowed_models, Telnyx::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute blocked
        #
        #   @return [Boolean, nil]
        optional :blocked, Telnyx::Internal::Type::Boolean

        # @!attribute budget_duration
        #
        #   @return [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil]
        optional :budget_duration, enum: -> { Telnyx::LlmTokenGateway::BudgetDuration }, nil?: true

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        optional :expires_at, Time, nil?: true

        # @!attribute max_budget
        #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        #   never binary float accounting.
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute max_parallel_requests
        #   Optional maximum concurrent reserved/dispatched cache misses across replicas.
        #   Null means no concurrency cap. Cache hits do not consume slots; unknown usage
        #   retains its budget hold without a slot.
        #
        #   @return [Integer, nil]
        optional :max_parallel_requests, Integer, nil?: true

        # @!attribute required_end_user_id
        #   Require a nonempty caller-asserted end-user ID; not proof of identity.
        #
        #   @return [Boolean, nil]
        optional :required_end_user_id, Telnyx::Internal::Type::Boolean

        # @!attribute rpm_limit
        #   Omitted or null defaults to the maximum (6000) (on a blocked key, null is kept
        #   until the key is unblocked); a value below the minimum (1) or above the maximum
        #   is rejected with 400 limit_out_of_range; a malformed value (negative, wrong type
        #   or precision) is 400 invalid_request. Block the key (blocked: true) to deny it;
        #   blocking is always accepted.
        #
        #   @return [Integer, nil]
        optional :rpm_limit, Integer, nil?: true

        # @!attribute token_user_id
        #
        #   @return [String, nil]
        optional :token_user_id, String, nil?: true

        # @!attribute tpm_limit
        #   Omitted or null defaults to the maximum (10000000) (on a blocked key, null is
        #   kept until the key is unblocked); a value below the minimum (1) or above the
        #   maximum is rejected with 400 limit_out_of_range; a malformed value (negative,
        #   wrong type or precision) is 400 invalid_request. Block the key (blocked: true)
        #   to deny it; blocking is always accepted.
        #
        #   @return [Integer, nil]
        optional :tpm_limit, Integer, nil?: true

        # @!method initialize(name:, token_group_id:, idempotency_key:, allowed_models: nil, blocked: nil, budget_duration: nil, expires_at: nil, max_budget: nil, max_parallel_requests: nil, required_end_user_id: nil, rpm_limit: nil, token_user_id: nil, tpm_limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::TokenKeyCreateParams} for more details.
        #
        #   @param name [String]
        #
        #   @param token_group_id [String]
        #
        #   @param idempotency_key [String]
        #
        #   @param allowed_models [Array<String>, nil]
        #
        #   @param blocked [Boolean]
        #
        #   @param budget_duration [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil]
        #
        #   @param expires_at [Time, nil]
        #
        #   @param max_budget [Float, nil] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
        #
        #   @param max_parallel_requests [Integer, nil] Optional maximum concurrent reserved/dispatched cache misses across replicas. Nu
        #
        #   @param required_end_user_id [Boolean] Require a nonempty caller-asserted end-user ID; not proof of identity.
        #
        #   @param rpm_limit [Integer, nil] Omitted or null defaults to the maximum (6000) (on a blocked key, null is kept u
        #
        #   @param token_user_id [String, nil]
        #
        #   @param tpm_limit [Integer, nil] Omitted or null defaults to the maximum (10000000) (on a blocked key, null is ke
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
