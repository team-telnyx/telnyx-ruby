# typed: strong

module Telnyx
  module Models
    module Networks
      class DefaultGatewayCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Networks::DefaultGatewayCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Wireguard peer ID.
        sig { returns(T.nilable(String)) }
        attr_reader :wireguard_peer_id

        sig { params(wireguard_peer_id: String).void }
        attr_writer :wireguard_peer_id

        sig do
          params(
            wireguard_peer_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Wireguard peer ID.
          wireguard_peer_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              wireguard_peer_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
