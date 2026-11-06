# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AgentGateways#list
    class AgentGateway < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the instance.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the instance was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute engine
      #   The gateway engine.
      #
      #   @return [Symbol, :litellm]
      required :engine, const: :litellm

      # @!attribute engine_version
      #   The engine version the instance runs.
      #
      #   @return [String]
      required :engine_version, String

      # @!attribute gateway_url
      #   The base URL of the instance's API, `http://<address>:4000`, where the address
      #   is the instance's peer address on the WireGuard Interface. Reachable only from
      #   hosts on the instance's _Network_, and every request to it carries a key from
      #   this API. `null` until the instance is `ready`.
      #
      #   @return [String, nil]
      required :gateway_url, String, nil?: true

      # @!attribute name
      #   A label for people; `null` when none was given.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute network_id
      #   The [_Network_](https://developers.telnyx.com/docs/network/overview) the
      #   WireGuard Interface belongs to.
      #
      #   @return [String, nil]
      required :network_id, String, nil?: true

      # @!attribute status
      #   Where the instance is in its lifecycle. `pending`: created and waiting to start.
      #   `provisioning`: starting. `ready`: running, with its `gateway_url` set.
      #   `failed`: did not start in time; delete it. `deleting`: being removed.
      #
      #   @return [Symbol, Telnyx::Models::AgentGateway::Status]
      required :status, enum: -> { Telnyx::AgentGateway::Status }

      # @!attribute wireguard_interface_id
      #   The WireGuard Interface the instance joins as a peer.
      #
      #   @return [String, nil]
      required :wireguard_interface_id, String, nil?: true

      # @!method initialize(id:, created_at:, engine_version:, gateway_url:, name:, network_id:, status:, wireguard_interface_id:, engine: :litellm)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AgentGateway} for more details.
      #
      #   An Agent Gateway instance on a WireGuard Interface.
      #
      #   @param id [String] Identifies the instance.
      #
      #   @param created_at [Time] When the instance was created.
      #
      #   @param engine_version [String] The engine version the instance runs.
      #
      #   @param gateway_url [String, nil] The base URL of the instance's API, `http://<address>:4000`, where the address i
      #
      #   @param name [String, nil] A label for people; `null` when none was given.
      #
      #   @param network_id [String, nil] The [_Network_](https://developers.telnyx.com/docs/network/overview) the WireGua
      #
      #   @param status [Symbol, Telnyx::Models::AgentGateway::Status] Where the instance is in its lifecycle. `pending`: created and waiting to start.
      #
      #   @param wireguard_interface_id [String, nil] The WireGuard Interface the instance joins as a peer.
      #
      #   @param engine [Symbol, :litellm] The gateway engine.

      # Where the instance is in its lifecycle. `pending`: created and waiting to start.
      # `provisioning`: starting. `ready`: running, with its `gateway_url` set.
      # `failed`: did not start in time; delete it. `deleting`: being removed.
      #
      # @see Telnyx::Models::AgentGateway#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        PROVISIONING = :provisioning
        READY = :ready
        FAILED = :failed
        DELETING = :deleting

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
