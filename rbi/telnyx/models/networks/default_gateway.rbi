# typed: strong

module Telnyx
  module Models
    module Networks
      class NetworksDefaultGateway < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Networks::NetworksDefaultGateway,
              Telnyx::Internal::AnyHash
            )
          end

        # Wireguard peer ID.
        sig { returns(T.nilable(String)) }
        attr_reader :wireguard_peer_id

        sig { params(wireguard_peer_id: String).void }
        attr_writer :wireguard_peer_id

        # Network ID.
        sig { returns(T.nilable(String)) }
        attr_reader :network_id

        sig { params(network_id: String).void }
        attr_writer :network_id

        # The current status of the interface deployment.
        sig { returns(T.nilable(Telnyx::InterfaceStatus::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: Telnyx::InterfaceStatus::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            network_id: String,
            status: Telnyx::InterfaceStatus::OrSymbol,
            wireguard_peer_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Network ID.
          network_id: nil,
          # The current status of the interface deployment.
          status: nil,
          # Wireguard peer ID.
          wireguard_peer_id: nil
        )
        end

        sig do
          override.returns(
            {
              network_id: String,
              status: Telnyx::InterfaceStatus::TaggedSymbol,
              wireguard_peer_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
