# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class ClickAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::ClickAction,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :observation_id

        sig { returns(String) }
        attr_accessor :ref

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

        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_ms

        sig { params(timeout_ms: Integer).void }
        attr_writer :timeout_ms

        sig do
          returns(
            T.nilable(Telnyx::BrowserSessions::ClickAction::Wait::OrSymbol)
          )
        end
        attr_reader :wait

        sig do
          params(
            wait: Telnyx::BrowserSessions::ClickAction::Wait::OrSymbol
          ).void
        end
        attr_writer :wait

        # Click an element identified by observation_id + ref.
        sig do
          params(
            observation_id: String,
            ref: String,
            idempotency_key: String,
            include_observation: T::Boolean,
            timeout_ms: Integer,
            wait: Telnyx::BrowserSessions::ClickAction::Wait::OrSymbol,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          observation_id:,
          ref:,
          idempotency_key: nil,
          include_observation: nil,
          timeout_ms: nil,
          wait: nil,
          type: :click
        )
        end

        sig do
          override.returns(
            {
              observation_id: String,
              ref: String,
              type: Symbol,
              idempotency_key: String,
              include_observation: T::Boolean,
              timeout_ms: Integer,
              wait: Telnyx::BrowserSessions::ClickAction::Wait::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Wait
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::BrowserSessions::ClickAction::Wait)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_WAIT =
            T.let(
              :no_wait,
              Telnyx::BrowserSessions::ClickAction::Wait::TaggedSymbol
            )
          DOM_STABLE =
            T.let(
              :dom_stable,
              Telnyx::BrowserSessions::ClickAction::Wait::TaggedSymbol
            )
          URL_CHANGE =
            T.let(
              :url_change,
              Telnyx::BrowserSessions::ClickAction::Wait::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::BrowserSessions::ClickAction::Wait::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
