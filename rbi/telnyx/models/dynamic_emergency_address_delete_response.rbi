# typed: strong

module Telnyx
  module Models
    class DynamicEmergencyAddressDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DynamicEmergencyAddressDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::DynamicEmergencyAddress)) }
      attr_reader :data

      sig { params(data: Telnyx::DynamicEmergencyAddress::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::DynamicEmergencyAddress::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::DynamicEmergencyAddress }) }
      def to_hash
      end
    end
  end
end
