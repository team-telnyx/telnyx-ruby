# typed: strong

module Telnyx
  module Models
    class PortingOrderEndUser < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderEndUser, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::PortingOrderEndUserAdmin)) }
      attr_reader :admin

      sig { params(admin: Telnyx::PortingOrderEndUserAdmin::OrHash).void }
      attr_writer :admin

      sig { returns(T.nilable(Telnyx::PortingOrderEndUserLocation)) }
      attr_reader :location

      sig { params(location: Telnyx::PortingOrderEndUserLocation::OrHash).void }
      attr_writer :location

      sig do
        params(
          admin: Telnyx::PortingOrderEndUserAdmin::OrHash,
          location: Telnyx::PortingOrderEndUserLocation::OrHash
        ).returns(T.attached_class)
      end
      def self.new(admin: nil, location: nil)
      end

      sig do
        override.returns(
          {
            admin: Telnyx::PortingOrderEndUserAdmin,
            location: Telnyx::PortingOrderEndUserLocation
          }
        )
      end
      def to_hash
      end
    end
  end
end
