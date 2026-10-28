# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class FillAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::FillAction,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :observation_id

        sig { returns(String) }
        attr_accessor :ref

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_observation

        sig { params(include_observation: T::Boolean).void }
        attr_writer :include_observation

        # Type text into the element identified by observation_id + ref.
        sig do
          params(
            observation_id: String,
            ref: String,
            value: String,
            idempotency_key: String,
            include_observation: T::Boolean,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          observation_id:,
          ref:,
          value:,
          idempotency_key: nil,
          include_observation: nil,
          type: :fill
        )
        end

        sig do
          override.returns(
            {
              observation_id: String,
              ref: String,
              type: Symbol,
              value: String,
              idempotency_key: String,
              include_observation: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
