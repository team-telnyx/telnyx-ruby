# typed: strong

module Telnyx
  module Models
    class DynamicEmergencyEndpointDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DynamicEmergencyEndpointDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::DynamicEmergencyEndpoint)) }
      attr_reader :data

      sig { params(data: Telnyx::DynamicEmergencyEndpoint::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::DynamicEmergencyEndpoint::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::DynamicEmergencyEndpoint }) }
      def to_hash
      end
    end
  end
end
