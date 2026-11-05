# typed: strong

module Telnyx
  module Models
    class AgentGateway < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::AgentGateway, Telnyx::Internal::AnyHash) }

      # Identifies the instance.
      sig { returns(String) }
      attr_accessor :id

      # When the instance was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The gateway engine.
      sig { returns(Symbol) }
      attr_accessor :engine

      # The engine version the instance runs.
      sig { returns(String) }
      attr_accessor :engine_version

      # The base URL of the instance's API, `http://<address>:4000`, where the address
      # is the instance's peer address on the WireGuard Interface. Reachable only from
      # hosts on the instance's _Network_, and every request to it carries a key from
      # this API. `null` until the instance is `ready`.
      sig { returns(T.nilable(String)) }
      attr_accessor :gateway_url

      # A label for people; `null` when none was given.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The [_Network_](https://developers.telnyx.com/docs/network/overview) the
      # WireGuard Interface belongs to.
      sig { returns(T.nilable(String)) }
      attr_accessor :network_id

      # Where the instance is in its lifecycle. `pending`: created and waiting to start.
      # `provisioning`: starting. `ready`: running, with its `gateway_url` set.
      # `failed`: did not start in time; delete it. `deleting`: being removed.
      sig { returns(Telnyx::AgentGateway::Status::TaggedSymbol) }
      attr_accessor :status

      # The WireGuard Interface the instance joins as a peer.
      sig { returns(T.nilable(String)) }
      attr_accessor :wireguard_interface_id

      # An Agent Gateway instance on a WireGuard Interface.
      sig do
        params(
          id: String,
          created_at: Time,
          engine_version: String,
          gateway_url: T.nilable(String),
          name: T.nilable(String),
          network_id: T.nilable(String),
          status: Telnyx::AgentGateway::Status::OrSymbol,
          wireguard_interface_id: T.nilable(String),
          engine: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the instance.
        id:,
        # When the instance was created.
        created_at:,
        # The engine version the instance runs.
        engine_version:,
        # The base URL of the instance's API, `http://<address>:4000`, where the address
        # is the instance's peer address on the WireGuard Interface. Reachable only from
        # hosts on the instance's _Network_, and every request to it carries a key from
        # this API. `null` until the instance is `ready`.
        gateway_url:,
        # A label for people; `null` when none was given.
        name:,
        # The [_Network_](https://developers.telnyx.com/docs/network/overview) the
        # WireGuard Interface belongs to.
        network_id:,
        # Where the instance is in its lifecycle. `pending`: created and waiting to start.
        # `provisioning`: starting. `ready`: running, with its `gateway_url` set.
        # `failed`: did not start in time; delete it. `deleting`: being removed.
        status:,
        # The WireGuard Interface the instance joins as a peer.
        wireguard_interface_id:,
        # The gateway engine.
        engine: :litellm
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            engine: Symbol,
            engine_version: String,
            gateway_url: T.nilable(String),
            name: T.nilable(String),
            network_id: T.nilable(String),
            status: Telnyx::AgentGateway::Status::TaggedSymbol,
            wireguard_interface_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Where the instance is in its lifecycle. `pending`: created and waiting to start.
      # `provisioning`: starting. `ready`: running, with its `gateway_url` set.
      # `failed`: did not start in time; delete it. `deleting`: being removed.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AgentGateway::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, Telnyx::AgentGateway::Status::TaggedSymbol)
        PROVISIONING =
          T.let(:provisioning, Telnyx::AgentGateway::Status::TaggedSymbol)
        READY = T.let(:ready, Telnyx::AgentGateway::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::AgentGateway::Status::TaggedSymbol)
        DELETING = T.let(:deleting, Telnyx::AgentGateway::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::AgentGateway::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
