# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class NavigateAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::NavigateAction,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :url

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_observation

        sig { params(include_observation: T::Boolean).void }
        attr_writer :include_observation

        sig do
          returns(
            T.nilable(
              Telnyx::BrowserSessions::NavigateAction::WaitUntil::OrSymbol
            )
          )
        end
        attr_reader :wait_until

        sig do
          params(
            wait_until:
              Telnyx::BrowserSessions::NavigateAction::WaitUntil::OrSymbol
          ).void
        end
        attr_writer :wait_until

        # Navigate to a URL.
        sig do
          params(
            url: String,
            idempotency_key: String,
            include_observation: T::Boolean,
            wait_until:
              Telnyx::BrowserSessions::NavigateAction::WaitUntil::OrSymbol,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          url:,
          idempotency_key: nil,
          include_observation: nil,
          wait_until: nil,
          type: :navigate
        )
        end

        sig do
          override.returns(
            {
              type: Symbol,
              url: String,
              idempotency_key: String,
              include_observation: T::Boolean,
              wait_until:
                Telnyx::BrowserSessions::NavigateAction::WaitUntil::OrSymbol
            }
          )
        end
        def to_hash
        end

        module WaitUntil
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::BrowserSessions::NavigateAction::WaitUntil)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOAD =
            T.let(
              :load,
              Telnyx::BrowserSessions::NavigateAction::WaitUntil::TaggedSymbol
            )
          DOM_STABLE =
            T.let(
              :dom_stable,
              Telnyx::BrowserSessions::NavigateAction::WaitUntil::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Telnyx::BrowserSessions::NavigateAction::WaitUntil::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::BrowserSessions::NavigateAction::WaitUntil::TaggedSymbol
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
