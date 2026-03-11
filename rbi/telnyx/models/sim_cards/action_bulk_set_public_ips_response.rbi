# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionBulkSetPublicIPsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # This object represents a bulk SIM card action. It groups SIM card actions
        # created through a bulk endpoint under a single resource for further lookup.
        sig { returns(T.nilable(Telnyx::SimCards::BulkSimCardAction)) }
        attr_reader :data

        sig { params(data: Telnyx::SimCards::BulkSimCardAction::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::SimCards::BulkSimCardAction::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # This object represents a bulk SIM card action. It groups SIM card actions
          # created through a bulk endpoint under a single resource for further lookup.
          data: nil
        )
        end

        sig { override.returns({ data: Telnyx::SimCards::BulkSimCardAction }) }
        def to_hash
        end
      end
    end
  end
end
