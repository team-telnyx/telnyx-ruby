# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class AssociatedPhoneNumberDeleteResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::AssociatedPhoneNumberDeleteResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::PortingAssociatedPhoneNumber)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::PortingOrders::PortingAssociatedPhoneNumber::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::PortingOrders::PortingAssociatedPhoneNumber::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::PortingOrders::PortingAssociatedPhoneNumber }
          )
        end
        def to_hash
        end
      end
    end
  end
end
