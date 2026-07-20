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

        # @!attribute currency
        #   Default currency for payments processed by this tool.
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute description
        #   Optional description of the pay tool that will be passed to the assistant.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute payment_method
        #   Default payment method for payments processed by this tool.
        #
        #   @return [String, nil]
        optional :payment_method, String

        # @!method initialize(connector_name:, currency: nil, description: nil, payment_method: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::PayToolParams} for more details.
        #
        #   @param connector_name [String] The name of the pay connector configured in the Telnyx API. Must reference an ex
        #
        #   @param currency [String] Default currency for payments processed by this tool.
        #
        #   @param description [String, nil] Optional description of the pay tool that will be passed to the assistant.
        #
        #   @param payment_method [String] Default payment method for payments processed by this tool.
      end
    end
  end
end
