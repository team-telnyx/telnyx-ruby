# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class TokenKey < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::LlmTokenGateway::TokenKey, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :allowed_models

        sig { returns(T::Boolean) }
        attr_accessor :blocked

        sig do
          returns(
            T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::TaggedSymbol)
          )
        end
        attr_accessor :budget_duration

        sig { returns(T.nilable(Time)) }
        attr_accessor :budget_started_at

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        # never binary float accounting.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Symbol) }
        attr_accessor :record_type

        # Require a nonempty caller-asserted end-user ID; not proof of identity.
        sig { returns(T::Boolean) }
        attr_accessor :required_end_user_id

        # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        # never binary float accounting.
        sig { returns(Float) }
        attr_accessor :reserved_spend

        sig { returns(T.nilable(Time)) }
        attr_accessor :resets_at

        # Stored key limit; set to the maximum when the key was written without one (on a
        # blocked key, null is kept until the key is unblocked).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :rpm_limit

        # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        # never binary float accounting.
        sig { returns(Float) }
        attr_accessor :spend

        sig { returns(String) }
        attr_accessor :token_group_id

        sig { returns(T.nilable(String)) }
        attr_accessor :token_user_id

        # Stored key limit; set to the maximum when the key was written without one (on a
        # blocked key, null is kept until the key is unblocked).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tpm_limit

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(Integer) }
        attr_accessor :version

        # Optional maximum concurrent reserved/dispatched cache misses across replicas.
        # Null means no concurrency cap. Cache hits do not consume slots; unknown usage
        # retains its budget hold without a slot.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_parallel_requests

        # Provisioning state of the key's current policy. `pending`: retry readiness with
        # bounded backoff (treat `unknown` the same). `inactive` and `unsupported` are
        # terminal until the key, group, user or catalog changes. `unavailable` means
        # provisioning is stuck and is retried slowly; surface it. Absent while the
        # gateway runs in compatibility mode.
        sig do
          returns(
            T.nilable(
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
            )
          )
        end
        attr_reader :provisioning

        sig do
          params(
            provisioning:
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::OrSymbol
          ).void
        end
        attr_writer :provisioning

        sig do
          params(
            id: String,
            allowed_models: T.nilable(T::Array[String]),
            blocked: T::Boolean,
            budget_duration:
              T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
            budget_started_at: T.nilable(Time),
            created_at: Time,
            expires_at: T.nilable(Time),
            max_budget: T.nilable(Float),
            name: String,
            required_end_user_id: T::Boolean,
            reserved_spend: Float,
            resets_at: T.nilable(Time),
            rpm_limit: T.nilable(Integer),
            spend: Float,
            token_group_id: String,
            token_user_id: T.nilable(String),
            tpm_limit: T.nilable(Integer),
            updated_at: Time,
            version: Integer,
            max_parallel_requests: T.nilable(Integer),
            provisioning:
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::OrSymbol,
            record_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          allowed_models:,
          blocked:,
          budget_duration:,
          budget_started_at:,
          created_at:,
          expires_at:,
          # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          # never binary float accounting.
          max_budget:,
          name:,
          # Require a nonempty caller-asserted end-user ID; not proof of identity.
          required_end_user_id:,
          # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          # never binary float accounting.
          reserved_spend:,
          resets_at:,
          # Stored key limit; set to the maximum when the key was written without one (on a
          # blocked key, null is kept until the key is unblocked).
          rpm_limit:,
          # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          # never binary float accounting.
          spend:,
          token_group_id:,
          token_user_id:,
          # Stored key limit; set to the maximum when the key was written without one (on a
          # blocked key, null is kept until the key is unblocked).
          tpm_limit:,
          updated_at:,
          version:,
          # Optional maximum concurrent reserved/dispatched cache misses across replicas.
          # Null means no concurrency cap. Cache hits do not consume slots; unknown usage
          # retains its budget hold without a slot.
          max_parallel_requests: nil,
          # Provisioning state of the key's current policy. `pending`: retry readiness with
          # bounded backoff (treat `unknown` the same). `inactive` and `unsupported` are
          # terminal until the key, group, user or catalog changes. `unavailable` means
          # provisioning is stuck and is retried slowly; surface it. Absent while the
          # gateway runs in compatibility mode.
          provisioning: nil,
          record_type: :token_key
        )
        end

        sig do
          override.returns(
            {
              id: String,
              allowed_models: T.nilable(T::Array[String]),
              blocked: T::Boolean,
              budget_duration:
                T.nilable(
                  Telnyx::LlmTokenGateway::BudgetDuration::TaggedSymbol
                ),
              budget_started_at: T.nilable(Time),
              created_at: Time,
              expires_at: T.nilable(Time),
              max_budget: T.nilable(Float),
              name: String,
              record_type: Symbol,
              required_end_user_id: T::Boolean,
              reserved_spend: Float,
              resets_at: T.nilable(Time),
              rpm_limit: T.nilable(Integer),
              spend: Float,
              token_group_id: String,
              token_user_id: T.nilable(String),
              tpm_limit: T.nilable(Integer),
              updated_at: Time,
              version: Integer,
              max_parallel_requests: T.nilable(Integer),
              provisioning:
                Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Provisioning state of the key's current policy. `pending`: retry readiness with
        # bounded backoff (treat `unknown` the same). `inactive` and `unsupported` are
        # terminal until the key, group, user or catalog changes. `unavailable` means
        # provisioning is stuck and is retried slowly; surface it. Absent while the
        # gateway runs in compatibility mode.
        module Provisioning
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::LlmTokenGateway::TokenKey::Provisioning)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          READY =
            T.let(
              :ready,
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
            )
          UNAVAILABLE =
            T.let(
              :unavailable,
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
            )
          UNSUPPORTED =
            T.let(
              :unsupported,
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::LlmTokenGateway::TokenKey::Provisioning::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
