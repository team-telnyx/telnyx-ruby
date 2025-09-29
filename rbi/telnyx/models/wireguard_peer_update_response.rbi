# typed: strong

module Telnyx
  module Models
    class WireguardPeerUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WireguardPeerUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::WireguardPeerUpdateResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::WireguardPeerUpdateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::WireguardPeerUpdateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::WireguardPeerUpdateResponse::Data }
        )
      end
      def to_hash
      end
    end
  end
end
