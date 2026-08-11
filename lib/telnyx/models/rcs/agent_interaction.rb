# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class AgentInteraction < Telnyx::Internal::Type::BaseModel
        # @!attribute interaction_type
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentInteraction::InteractionType]
        required :interaction_type, enum: -> { Telnyx::Rcs::AgentInteraction::InteractionType }

        # @!attribute description
        #   Required when interaction_type is `OTHER`.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(interaction_type:, description: nil)
        #   @param interaction_type [Symbol, Telnyx::Models::Rcs::AgentInteraction::InteractionType]
        #
        #   @param description [String, nil] Required when interaction_type is `OTHER`.

        # @see Telnyx::Models::Rcs::AgentInteraction#interaction_type
        module InteractionType
          extend Telnyx::Internal::Type::Enum

          TRANSACTIONAL_UPDATES = :TRANSACTIONAL_UPDATES
          CUSTOMER_SUPPORT = :CUSTOMER_SUPPORT
          LOYALTY_OR_REWARD = :LOYALTY_OR_REWARD
          MARKETING_OR_PROMOTIONAL = :MARKETING_OR_PROMOTIONAL
          ACCOUNT_ALERTS = :ACCOUNT_ALERTS
          TWO_WAY_CONVERSATION = :TWO_WAY_CONVERSATION
          OTHER = :OTHER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
