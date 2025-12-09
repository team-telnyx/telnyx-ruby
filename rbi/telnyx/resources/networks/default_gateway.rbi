# typed: strong

module Telnyx
  module Resources
    class Networks
      class DefaultGateway
        # Create Default Gateway.
        sig do
          params(
            network_identifier: String,
            wireguard_peer_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Networks::DefaultGatewayCreateResponse)
        end
        def create(
          # Identifies the resource.
          network_identifier,
          # Wireguard peer ID.
          wireguard_peer_id: nil,
          request_options: {}
        )
        end

        # Get Default Gateway status.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Networks::DefaultGatewayRetrieveResponse)
        end
        def retrieve(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # Delete Default Gateway.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Networks::DefaultGatewayDeleteResponse)
        end
        def delete(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
