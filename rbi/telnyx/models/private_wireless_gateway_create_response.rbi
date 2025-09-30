# typed: strong

module Telnyx
  module Models
    class PrivateWirelessGatewayCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PrivateWirelessGatewayCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::PrivateWirelessGateway)) }
      attr_reader :data

      sig { params(data: Telnyx::PrivateWirelessGateway::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::PrivateWirelessGateway::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::PrivateWirelessGateway }) }
      def to_hash
      end
    end
  end
end
