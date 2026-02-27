# typed: strong

module Telnyx
  module Models
    class WireguardPeerCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::WireguardPeerCreateParams, Telnyx::Internal::AnyHash)
        end

      # The id of the wireguard interface associated with the peer.
      sig { returns(String) }
      attr_accessor :wireguard_interface_id

      sig do
        params(
          wireguard_interface_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The id of the wireguard interface associated with the peer.
        wireguard_interface_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            wireguard_interface_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
