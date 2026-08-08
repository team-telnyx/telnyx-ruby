# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCards::ActionRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # This object represents a SIM card action. It allows tracking the current status
        # of an operation that impacts the SIM card.
        sig { returns(T.nilable(Telnyx::SimCards::WirelessSimCardAction)) }
        attr_reader :data

        sig do
          params(data: Telnyx::SimCards::WirelessSimCardAction::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::SimCards::WirelessSimCardAction::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # This object represents a SIM card action. It allows tracking the current status
          # of an operation that impacts the SIM card.
          data: nil
        )
        end

        sig do
          override.returns({ data: Telnyx::SimCards::WirelessSimCardAction })
        end
        def to_hash
        end
      end
    end
  end
end
