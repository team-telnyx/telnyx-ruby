# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::TokenKeys#list
      class TokenKey < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute allowed_models
        #
        #   @return [Array<String>, nil]
        required :allowed_models, Telnyx::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute blocked
        #
        #   @return [Boolean]
        required :blocked, Telnyx::Internal::Type::Boolean

        # @!attribute budget_duration
        #
        #   @return [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil]
        required :budget_duration, enum: -> { Telnyx::LlmTokenGateway::BudgetDuration }, nil?: true

        # @!attribute budget_started_at
        #
        #   @return [Time, nil]
        required :budget_started_at, Time, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        required :expires_at, Time, nil?: true

        # @!attribute max_budget
        #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        #   never binary float accounting.
        #
        #   @return [Float, nil]
        required :max_budget, Float, nil?: true

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute record_type
        #
        #   @return [Symbol, :token_key]
        required :record_type, const: :token_key

        # @!attribute required_end_user_id
        #   Require a nonempty caller-asserted end-user ID; not proof of identity.
        #
        #   @return [Boolean]
        required :required_end_user_id, Telnyx::Internal::Type::Boolean

        # @!attribute reserved_spend
        #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        #   never binary float accounting.
        #
        #   @return [Float]
        required :reserved_spend, Float

        # @!attribute resets_at
        #
        #   @return [Time, nil]
        required :resets_at, Time, nil?: true

        # @!attribute rpm_limit
        #   Stored key limit; set to the maximum when the key was written without one (on a
        #   blocked key, null is kept until the key is unblocked).
        #
        #   @return [Integer, nil]
        required :rpm_limit, Integer, nil?: true

        # @!attribute spend
        #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        #   never binary float accounting.
        #
        #   @return [Float]
        required :spend, Float

        # @!attribute token_group_id
        #
        #   @return [String]
        required :token_group_id, String

        # @!attribute token_user_id
        #
        #   @return [String, nil]
        required :token_user_id, String, nil?: true

        # @!attribute tpm_limit
        #   Stored key limit; set to the maximum when the key was written without one (on a
        #   blocked key, null is kept until the key is unblocked).
        #
        #   @return [Integer, nil]
        required :tpm_limit, Integer, nil?: true

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute version
        #
        #   @return [Integer]
        required :version, Integer

        # @!attribute max_parallel_requests
        #   Optional maximum concurrent reserved/dispatched cache misses across replicas.
        #   Null means no concurrency cap. Cache hits do not consume slots; unknown usage
        #   retains its budget hold without a slot.
        #
        #   @return [Integer, nil]
        optional :max_parallel_requests, Integer, nil?: true

        # @!attribute provisioning
        #   Provisioning state of the key's current policy. `pending`: retry readiness with
        #   bounded backoff (treat `unknown` the same). `inactive` and `unsupported` are
        #   terminal until the key, group, user or catalog changes. `unavailable` means
        #   provisioning is stuck and is retried slowly; surface it. Absent while the
        #   gateway runs in compatibility mode.
        #
        #   @return [Symbol, Telnyx::Models::LlmTokenGateway::TokenKey::Provisioning, nil]
        optional :provisioning, enum: -> { Telnyx::LlmTokenGateway::TokenKey::Provisioning }

        # @!method initialize(id:, allowed_models:, blocked:, budget_duration:, budget_started_at:, created_at:, expires_at:, max_budget:, name:, required_end_user_id:, reserved_spend:, resets_at:, rpm_limit:, spend:, token_group_id:, token_user_id:, tpm_limit:, updated_at:, version:, max_parallel_requests: nil, provisioning: nil, record_type: :token_key)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::TokenKey} for more details.
        #
        #   @param id [String]
        #
        #   @param allowed_models [Array<String>, nil]
        #
        #   @param blocked [Boolean]
        #
        #   @param budget_duration [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil]
        #
        #   @param budget_started_at [Time, nil]
        #
        #   @param created_at [Time]
        #
        #   @param expires_at [Time, nil]
        #
        #   @param max_budget [Float, nil] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
        #
        #   @param name [String]
        #
        #   @param required_end_user_id [Boolean] Require a nonempty caller-asserted end-user ID; not proof of identity.
        #
        #   @param reserved_spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
        #
        #   @param resets_at [Time, nil]
        #
        #   @param rpm_limit [Integer, nil] Stored key limit; set to the maximum when the key was written without one (on a
        #
        #   @param spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
        #
        #   @param token_group_id [String]
        #
        #   @param token_user_id [String, nil]
        #
        #   @param tpm_limit [Integer, nil] Stored key limit; set to the maximum when the key was written without one (on a
        #
        #   @param updated_at [Time]
        #
        #   @param version [Integer]
        #
        #   @param max_parallel_requests [Integer, nil] Optional maximum concurrent reserved/dispatched cache misses across replicas. Nu
        #
        #   @param provisioning [Symbol, Telnyx::Models::LlmTokenGateway::TokenKey::Provisioning] Provisioning state of the key's current policy. `pending`: retry readiness with
        #
        #   @param record_type [Symbol, :token_key]

        # Provisioning state of the key's current policy. `pending`: retry readiness with
        # bounded backoff (treat `unknown` the same). `inactive` and `unsupported` are
        # terminal until the key, group, user or catalog changes. `unavailable` means
        # provisioning is stuck and is retried slowly; surface it. Absent while the
        # gateway runs in compatibility mode.
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenKey#provisioning
        module Provisioning
          extend Telnyx::Internal::Type::Enum

          READY = :ready
          PENDING = :pending
          UNAVAILABLE = :unavailable
          INACTIVE = :inactive
          UNSUPPORTED = :unsupported
          UNKNOWN = :unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
