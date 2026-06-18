# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActionRequirementInitiateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::PortingOrders::PortingActionRequirement))
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::PortingOrders::PortingActionRequirement::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::PortingOrders::PortingActionRequirement::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::PortingOrders::PortingActionRequirement }
          )
        end
        def to_hash
        end
      end
    end
  end
end
