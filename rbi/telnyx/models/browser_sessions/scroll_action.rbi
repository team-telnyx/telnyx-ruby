# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class ScrollAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::ScrollAction,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(Integer)) }
        attr_reader :delta_x

        sig { params(delta_x: Integer).void }
        attr_writer :delta_x

        sig { returns(T.nilable(Integer)) }
        attr_reader :delta_y

        sig { params(delta_y: Integer).void }
        attr_writer :delta_y

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_observation

        sig { params(include_observation: T::Boolean).void }
        attr_writer :include_observation

        # Scroll the page.
        sig do
          params(
            delta_x: Integer,
            delta_y: Integer,
            idempotency_key: String,
            include_observation: T::Boolean,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          delta_x: nil,
          delta_y: nil,
          idempotency_key: nil,
          include_observation: nil,
          type: :scroll
        )
        end

        sig do
          override.returns(
            {
              type: Symbol,
              delta_x: Integer,
              delta_y: Integer,
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
