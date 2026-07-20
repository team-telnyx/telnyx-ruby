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

        # Default currency for payments processed by this tool.
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Optional description of the pay tool that will be passed to the assistant.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Default payment method for payments processed by this tool.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method

        sig { params(payment_method: String).void }
        attr_writer :payment_method

        sig do
          params(
            connector_name: String,
            currency: String,
            description: T.nilable(String),
            payment_method: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the pay connector configured in the Telnyx API. Must reference an
          # existing pay connector for this organization.
          connector_name:,
          # Default currency for payments processed by this tool.
          currency: nil,
          # Optional description of the pay tool that will be passed to the assistant.
          description: nil,
          # Default payment method for payments processed by this tool.
          payment_method: nil
        )
        end

        sig do
          override.returns(
            {
              connector_name: String,
              currency: String,
              description: T.nilable(String),
              payment_method: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
