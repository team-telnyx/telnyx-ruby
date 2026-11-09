# typed: strong

module Telnyx
  module Models
    class AgentGatewayCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AgentGatewayCreateParams, Telnyx::Internal::AnyHash)
        end

      # One of the account's WireGuard Interfaces. The instance joins it as a peer, and
      # the interface's other peers reach the instance.
      sig { returns(String) }
      attr_accessor :wireguard_interface_id

      # A label for people.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          wireguard_interface_id: String,
          name: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # One of the account's WireGuard Interfaces. The instance joins it as a peer, and
        # the interface's other peers reach the instance.
        wireguard_interface_id:,
        # A label for people.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            wireguard_interface_id: String,
            name: T.nilable(String),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
