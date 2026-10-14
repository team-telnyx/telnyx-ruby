# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class TokenKeyCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::TokenKeyCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :token_group_id

        sig { returns(String) }
        attr_accessor :idempotency_key

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :allowed_models

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :blocked

        sig { params(blocked: T::Boolean).void }
        attr_writer :blocked

        sig do
          returns(T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol))
        end
        attr_accessor :budget_duration

        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        # never binary float accounting.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        # Optional maximum concurrent reserved/dispatched cache misses across replicas.
        # Null means no concurrency cap. Cache hits do not consume slots; unknown usage
        # retains its budget hold without a slot.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_parallel_requests

        # Require a nonempty caller-asserted end-user ID; not proof of identity.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :required_end_user_id

        sig { params(required_end_user_id: T::Boolean).void }
        attr_writer :required_end_user_id

        # Omitted or null defaults to the maximum (6000) (on a blocked key, null is kept
        # until the key is unblocked); a value below the minimum (1) or above the maximum
        # is rejected with 400 limit_out_of_range; a malformed value (negative, wrong type
        # or precision) is 400 invalid_request. Block the key (blocked: true) to deny it;
        # blocking is always accepted.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :rpm_limit

        sig { returns(T.nilable(String)) }
        attr_accessor :token_user_id

        # Omitted or null defaults to the maximum (10000000) (on a blocked key, null is
        # kept until the key is unblocked); a value below the minimum (1) or above the
        # maximum is rejected with 400 limit_out_of_range; a malformed value (negative,
        # wrong type or precision) is 400 invalid_request. Block the key (blocked: true)
        # to deny it; blocking is always accepted.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tpm_limit

        sig do
          params(
            name: String,
            token_group_id: String,
            idempotency_key: String,
            allowed_models: T.nilable(T::Array[String]),
            blocked: T::Boolean,
            budget_duration:
              T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
            expires_at: T.nilable(Time),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            required_end_user_id: T::Boolean,
            rpm_limit: T.nilable(Integer),
            token_user_id: T.nilable(String),
            tpm_limit: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          name:,
          token_group_id:,
          idempotency_key:,
          allowed_models: nil,
          blocked: nil,
          budget_duration: nil,
          expires_at: nil,
          # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          # never binary float accounting.
          max_budget: nil,
          # Optional maximum concurrent reserved/dispatched cache misses across replicas.
          # Null means no concurrency cap. Cache hits do not consume slots; unknown usage
          # retains its budget hold without a slot.
          max_parallel_requests: nil,
          # Require a nonempty caller-asserted end-user ID; not proof of identity.
          required_end_user_id: nil,
          # Omitted or null defaults to the maximum (6000) (on a blocked key, null is kept
          # until the key is unblocked); a value below the minimum (1) or above the maximum
          # is rejected with 400 limit_out_of_range; a malformed value (negative, wrong type
          # or precision) is 400 invalid_request. Block the key (blocked: true) to deny it;
          # blocking is always accepted.
          rpm_limit: nil,
          token_user_id: nil,
          # Omitted or null defaults to the maximum (10000000) (on a blocked key, null is
          # kept until the key is unblocked); a value below the minimum (1) or above the
          # maximum is rejected with 400 limit_out_of_range; a malformed value (negative,
          # wrong type or precision) is 400 invalid_request. Block the key (blocked: true)
          # to deny it; blocking is always accepted.
          tpm_limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              token_group_id: String,
              idempotency_key: String,
              allowed_models: T.nilable(T::Array[String]),
              blocked: T::Boolean,
              budget_duration:
                T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
              expires_at: T.nilable(Time),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              required_end_user_id: T::Boolean,
              rpm_limit: T.nilable(Integer),
              token_user_id: T.nilable(String),
              tpm_limit: T.nilable(Integer),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
