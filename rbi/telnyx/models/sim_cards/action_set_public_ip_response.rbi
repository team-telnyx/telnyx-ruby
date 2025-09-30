# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionSetPublicIPResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCards::ActionSetPublicIPResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # This object represents a SIM card action. It allows tracking the current status
        # of an operation that impacts the SIM card.
        sig { returns(T.nilable(Telnyx::SimCards::SimCardAction)) }
        attr_reader :data

        sig { params(data: Telnyx::SimCards::SimCardAction::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::SimCards::SimCardAction::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # This object represents a SIM card action. It allows tracking the current status
          # of an operation that impacts the SIM card.
          data: nil
        )
        end

        sig { override.returns({ data: Telnyx::SimCards::SimCardAction }) }
        def to_hash
        end
      end
    end
  end
end
