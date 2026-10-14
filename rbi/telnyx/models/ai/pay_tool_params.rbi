# typed: strong

module Telnyx
  module Models
    module AI
      class PayToolParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::PayToolParams, Telnyx::Internal::AnyHash)
          end

        # The name of the pay connector configured in the Telnyx API. Must reference an
        # existing pay connector for this organization.
        sig { returns(String) }
        attr_accessor :connector_name

        # Custom key/value parameters forwarded to the pay connector as `parameters` in
        # the processor request. String values may use `{{dynamic_variable}}` templating,
        # resolved per call.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :connector_parameters

        sig { params(connector_parameters: T::Hash[Symbol, T.anything]).void }
        attr_writer :connector_parameters

        # Default currency for payments processed by this tool.
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Description of the pay tool shown to the assistant so it knows when to call the
        # tool. Not sent to the payment connector — the per-call `description` argument
        # the assistant passes is what reaches the processor.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Default payment method for payments processed by this tool.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method

        sig { params(payment_method: String).void }
        attr_writer :payment_method

        # Restricts accepted card numbers to the listed card types. When the caller enters
        # a card number that does not match one of the listed types, Pay treats the input
        # as invalid and re-prompts for the card number.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::AI::PayToolParams::ValidCardType::OrSymbol]
            )
          )
        end
        attr_reader :valid_card_types

        sig do
          params(
            valid_card_types:
              T::Array[Telnyx::AI::PayToolParams::ValidCardType::OrSymbol]
          ).void
        end
        attr_writer :valid_card_types

        sig do
          params(
            connector_name: String,
            connector_parameters: T::Hash[Symbol, T.anything],
            currency: String,
            description: T.nilable(String),
            payment_method: String,
            valid_card_types:
              T::Array[Telnyx::AI::PayToolParams::ValidCardType::OrSymbol]
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the pay connector configured in the Telnyx API. Must reference an
          # existing pay connector for this organization.
          connector_name:,
          # Custom key/value parameters forwarded to the pay connector as `parameters` in
          # the processor request. String values may use `{{dynamic_variable}}` templating,
          # resolved per call.
          connector_parameters: nil,
          # Default currency for payments processed by this tool.
          currency: nil,
          # Description of the pay tool shown to the assistant so it knows when to call the
          # tool. Not sent to the payment connector — the per-call `description` argument
          # the assistant passes is what reaches the processor.
          description: nil,
          # Default payment method for payments processed by this tool.
          payment_method: nil,
          # Restricts accepted card numbers to the listed card types. When the caller enters
          # a card number that does not match one of the listed types, Pay treats the input
          # as invalid and re-prompts for the card number.
          valid_card_types: nil
        )
        end

        sig do
          override.returns(
            {
              connector_name: String,
              connector_parameters: T::Hash[Symbol, T.anything],
              currency: String,
              description: T.nilable(String),
              payment_method: String,
              valid_card_types:
                T::Array[Telnyx::AI::PayToolParams::ValidCardType::OrSymbol]
            }
          )
        end
        def to_hash
        end

        module ValidCardType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::PayToolParams::ValidCardType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISA =
            T.let(:visa, Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol)
          MASTERCARD =
            T.let(
              :mastercard,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          AMEX =
            T.let(:amex, Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol)
          MAESTRO =
            T.let(
              :maestro,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          DISCOVER =
            T.let(
              :discover,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          OPTIMA =
            T.let(
              :optima,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          JCB =
            T.let(:jcb, Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol)
          DINERS_CLUB =
            T.let(
              :"diners-club",
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          ENROUTE =
            T.let(
              :enroute,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
