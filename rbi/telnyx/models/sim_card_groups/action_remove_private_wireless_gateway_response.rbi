# typed: strong

module Telnyx
  module Models
    module SimCardGroups
      class ActionRemovePrivateWirelessGatewayResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCardGroups::ActionRemovePrivateWirelessGatewayResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # This object represents a SIM card group action request. It allows tracking the
        # current status of an operation that impacts the SIM card group and SIM card in
        # it.
        sig { returns(T.nilable(Telnyx::SimCardGroups::SimCardGroupAction)) }
        attr_reader :data

        sig do
          params(data: Telnyx::SimCardGroups::SimCardGroupAction::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::SimCardGroups::SimCardGroupAction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # This object represents a SIM card group action request. It allows tracking the
          # current status of an operation that impacts the SIM card group and SIM card in
          # it.
          data: nil
        )
        end

        sig do
          override.returns({ data: Telnyx::SimCardGroups::SimCardGroupAction })
        end
        def to_hash
        end
      end
    end
  end
end
