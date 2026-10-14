# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class PayToolParams < Telnyx::Internal::Type::BaseModel
        # @!attribute connector_name
        #   The name of the pay connector configured in the Telnyx API. Must reference an
        #   existing pay connector for this organization.
        #
        #   @return [String]
        required :connector_name, String

        # @!attribute connector_parameters
        #   Custom key/value parameters forwarded to the pay connector as `parameters` in
        #   the processor request. String values may use `{{dynamic_variable}}` templating,
        #   resolved per call.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :connector_parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute currency
        #   Default currency for payments processed by this tool.
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute description
        #   Description of the pay tool shown to the assistant so it knows when to call the
        #   tool. Not sent to the payment connector — the per-call `description` argument
        #   the assistant passes is what reaches the processor.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute payment_method
        #   Default payment method for payments processed by this tool.
        #
        #   @return [String, nil]
        optional :payment_method, String

        # @!attribute valid_card_types
        #   Restricts accepted card numbers to the listed card types. When the caller enters
        #   a card number that does not match one of the listed types, Pay treats the input
        #   as invalid and re-prompts for the card number.
        #
        #   @return [Array<Symbol, Telnyx::Models::AI::PayToolParams::ValidCardType>, nil]
        optional :valid_card_types,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::PayToolParams::ValidCardType] }

        # @!method initialize(connector_name:, connector_parameters: nil, currency: nil, description: nil, payment_method: nil, valid_card_types: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::PayToolParams} for more details.
        #
        #   @param connector_name [String] The name of the pay connector configured in the Telnyx API. Must reference an ex
        #
        #   @param connector_parameters [Hash{Symbol=>Object}] Custom key/value parameters forwarded to the pay connector as `parameters` in th
        #
        #   @param currency [String] Default currency for payments processed by this tool.
        #
        #   @param description [String, nil] Description of the pay tool shown to the assistant so it knows when to call the
        #
        #   @param payment_method [String] Default payment method for payments processed by this tool.
        #
        #   @param valid_card_types [Array<Symbol, Telnyx::Models::AI::PayToolParams::ValidCardType>] Restricts accepted card numbers to the listed card types. When the caller enters

        module ValidCardType
          extend Telnyx::Internal::Type::Enum

          VISA = :visa
          MASTERCARD = :mastercard
          AMEX = :amex
          MAESTRO = :maestro
          DISCOVER = :discover
          OPTIMA = :optima
          JCB = :jcb
          DINERS_CLUB = :"diners-club"
          ENROUTE = :enroute

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
