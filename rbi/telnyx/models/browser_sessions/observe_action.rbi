# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class ObserveAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::ObserveAction,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_observation

        sig { params(include_observation: T::Boolean).void }
        attr_writer :include_observation

        # Capture an observation (DOM snapshot) of the current page.
        sig do
          params(
            idempotency_key: String,
            include_observation: T::Boolean,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          idempotency_key: nil,
          include_observation: nil,
          type: :observe
        )
        end

        sig do
          override.returns(
            {
              type: Symbol,
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
