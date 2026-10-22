# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TailscaleSubnetRouters#list
    class TailscaleSubnetRouter < Telnyx::Internal::Type::BaseModel
      # @!attribute advertised_routes
      #   IPv4 subnets of the Network that the router advertises to the tailnet. Each
      #   entry is a canonical CIDR that the Network routes. Default, loopback,
      #   link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
      #   are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
      #
      #   @return [Array<String>, nil]
      optional :advertised_routes, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute name
      #   A user specified name for the router.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute network_id
      #   The id of the Network the router is attached to.
      #
      #   @return [String, nil]
      optional :network_id, String

      # @!attribute region_code
      #   The code of the region the router is created in. `GET /network_coverage` lists
      #   the regions whose `available_services` include `tailscale_subnet_router`.
      #
      #   @return [String, nil]
      optional :region_code, String

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute customer_address
        #   The router's address on the Network, from `172.27.254.0/24`. Tailnet traffic
        #   enters the Network from this address.
        #
        #   @return [String, nil]
        optional :customer_address, String

        # @!attribute device_id
        #   The router's node id on the tailnet. Set once the router has enrolled.
        #
        #   @return [String, nil]
        optional :device_id, String, nil?: true

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #   `provisioning`: Telnyx is creating the router or applying a change.
        #   `provisioned`: the router is on the tailnet and advertises its routes; the
        #   tailnet still approves them. `failed`: enrollment did not complete, and `PATCH`
        #   retries it. `deleting`: the router is being removed.
        #
        #   @return [Symbol, Telnyx::Models::TailscaleSubnetRouter::Status, nil]
        optional :status, enum: -> { Telnyx::TailscaleSubnetRouter::Status }

        # @!attribute tailnet_name
        #   The name of the tailnet the router is enrolled in. Set once the router has
        #   enrolled.
        #
        #   @return [String, nil]
        optional :tailnet_name, String, nil?: true

        # @!attribute tailscale_ips
        #   The router's addresses on the tailnet. Empty until the router has enrolled.
        #
        #   @return [Array<String>, nil]
        optional :tailscale_ips, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, advertised_routes: nil, created_at: nil, customer_address: nil, device_id: nil, name: nil, network_id: nil, record_type: nil, region_code: nil, status: nil, tailnet_name: nil, tailscale_ips: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TailscaleSubnetRouter} for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param advertised_routes [Array<String>] IPv4 subnets of the Network that the router advertises to the tailnet. Each entr
      #
      #   @param created_at [Time] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param customer_address [String] The router's address on the Network, from `172.27.254.0/24`. Tailnet traffic ent
      #
      #   @param device_id [String, nil] The router's node id on the tailnet. Set once the router has enrolled.
      #
      #   @param name [String] A user specified name for the router.
      #
      #   @param network_id [String] The id of the Network the router is attached to.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param region_code [String] The code of the region the router is created in. `GET /network_coverage` lists t
      #
      #   @param status [Symbol, Telnyx::Models::TailscaleSubnetRouter::Status] `provisioning`: Telnyx is creating the router or applying a change. `provisioned
      #
      #   @param tailnet_name [String, nil] The name of the tailnet the router is enrolled in. Set once the router has enrol
      #
      #   @param tailscale_ips [Array<String>] The router's addresses on the tailnet. Empty until the router has enrolled.
      #
      #   @param updated_at [Time] ISO 8601 formatted date-time indicating when the resource was updated.

      # `provisioning`: Telnyx is creating the router or applying a change.
      # `provisioned`: the router is on the tailnet and advertises its routes; the
      # tailnet still approves them. `failed`: enrollment did not complete, and `PATCH`
      # retries it. `deleting`: the router is being removed.
      #
      # @see Telnyx::Models::TailscaleSubnetRouter#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PROVISIONING = :provisioning
        PROVISIONED = :provisioned
        FAILED = :failed
        DELETING = :deleting

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
