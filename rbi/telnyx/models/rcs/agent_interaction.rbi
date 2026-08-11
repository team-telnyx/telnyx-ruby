# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentInteraction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentInteraction, Telnyx::Internal::AnyHash)
          end

        sig do
          returns(Telnyx::Rcs::AgentInteraction::InteractionType::OrSymbol)
        end
        attr_accessor :interaction_type

        # Required when interaction_type is `OTHER`.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig do
          params(
            interaction_type:
              Telnyx::Rcs::AgentInteraction::InteractionType::OrSymbol,
            description: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          interaction_type:,
          # Required when interaction_type is `OTHER`.
          description: nil
        )
        end

        sig do
          override.returns(
            {
              interaction_type:
                Telnyx::Rcs::AgentInteraction::InteractionType::OrSymbol,
              description: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module InteractionType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Rcs::AgentInteraction::InteractionType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRANSACTIONAL_UPDATES =
            T.let(
              :TRANSACTIONAL_UPDATES,
              Telnyx::Rcs::AgentInteraction::InteractionType::TaggedSymbol
            )
          CUSTOMER_SUPPORT =
            T.let(
              :CUSTOMER_SUPPORT,
              Telnyx::Rcs::AgentInteraction::InteractionType::TaggedSymbol
            )
          LOYALTY_OR_REWARD =
            T.let(
              :LOYALTY_OR_REWARD,
              Telnyx::Rcs::AgentInteraction::InteractionType::TaggedSymbol
            )
          MARKETING_OR_PROMOTIONAL =
            T.let(
              :MARKETING_OR_PROMOTIONAL,
              Telnyx::Rcs::AgentInteraction::InteractionType::TaggedSymbol
            )
          ACCOUNT_ALERTS =
            T.let(
              :ACCOUNT_ALERTS,
              Telnyx::Rcs::AgentInteraction::InteractionType::TaggedSymbol
            )
          TWO_WAY_CONVERSATION =
            T.let(
              :TWO_WAY_CONVERSATION,
              Telnyx::Rcs::AgentInteraction::InteractionType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              Telnyx::Rcs::AgentInteraction::InteractionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Rcs::AgentInteraction::InteractionType::TaggedSymbol
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
