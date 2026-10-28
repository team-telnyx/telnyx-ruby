# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class PressAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::PressAction,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::BrowserSessions::PressAction::Key::OrSymbol) }
        attr_accessor :key

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

        # Press a keyboard key.
        sig do
          params(
            key: Telnyx::BrowserSessions::PressAction::Key::OrSymbol,
            idempotency_key: String,
            include_observation: T::Boolean,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          key:,
          idempotency_key: nil,
          include_observation: nil,
          type: :press
        )
        end

        sig do
          override.returns(
            {
              key: Telnyx::BrowserSessions::PressAction::Key::OrSymbol,
              type: Symbol,
              idempotency_key: String,
              include_observation: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Key
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::BrowserSessions::PressAction::Key)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENTER =
            T.let(
              :Enter,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          TAB =
            T.let(:Tab, Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol)
          ESCAPE =
            T.let(
              :Escape,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          BACKSPACE =
            T.let(
              :Backspace,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          ARROW_UP =
            T.let(
              :ArrowUp,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          ARROW_DOWN =
            T.let(
              :ArrowDown,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          ARROW_LEFT =
            T.let(
              :ArrowLeft,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          ARROW_RIGHT =
            T.let(
              :ArrowRight,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          PAGE_UP =
            T.let(
              :PageUp,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          PAGE_DOWN =
            T.let(
              :PageDown,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          HOME =
            T.let(
              :Home,
              Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol
            )
          END_ =
            T.let(:End, Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::BrowserSessions::PressAction::Key::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
