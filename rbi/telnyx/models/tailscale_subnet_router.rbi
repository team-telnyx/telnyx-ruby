# typed: strong

module Telnyx
  module Models
    class TailscaleSubnetRouter < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::TailscaleSubnetRouter, Telnyx::Internal::AnyHash)
        end

      # IPv4 subnets of the Network that the router advertises to the tailnet. Each
      # entry is a canonical CIDR that the Network routes. Default, loopback,
      # link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
      # are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :advertised_routes

      sig { params(advertised_routes: T::Array[String]).void }
      attr_writer :advertised_routes

      # A user specified name for the router.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The id of the Network the router is attached to.
      sig { returns(T.nilable(String)) }
      attr_reader :network_id

      sig { params(network_id: String).void }
      attr_writer :network_id

      # The code of the region the router is created in. `GET /network_coverage` lists
      # the regions whose `available_services` include `tailscale_subnet_router`.
      sig { returns(T.nilable(String)) }
      attr_reader :region_code

      sig { params(region_code: String).void }
      attr_writer :region_code

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The router's address on the Network, from `172.27.254.0/24`. Tailnet traffic
      # enters the Network from this address.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_address

      sig { params(customer_address: String).void }
      attr_writer :customer_address

      # The router's node id on the tailnet. Set once the router has enrolled.
      sig { returns(T.nilable(String)) }
      attr_accessor :device_id

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # `provisioning`: Telnyx is creating the router or applying a change.
      # `provisioned`: the router is on the tailnet and advertises its routes; the
      # tailnet still approves them. `failed`: enrollment did not complete, and `PATCH`
      # retries it. `deleting`: the router is being removed.
      sig do
        returns(T.nilable(Telnyx::TailscaleSubnetRouter::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::TailscaleSubnetRouter::Status::OrSymbol).void
      end
      attr_writer :status

      # The name of the tailnet the router is enrolled in. Set once the router has
      # enrolled.
      sig { returns(T.nilable(String)) }
      attr_accessor :tailnet_name

      # The router's addresses on the tailnet. Empty until the router has enrolled.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tailscale_ips

      sig { params(tailscale_ips: T::Array[String]).void }
      attr_writer :tailscale_ips

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          advertised_routes: T::Array[String],
          created_at: Time,
          customer_address: String,
          device_id: T.nilable(String),
          name: String,
          network_id: String,
          record_type: String,
          region_code: String,
          status: Telnyx::TailscaleSubnetRouter::Status::OrSymbol,
          tailnet_name: T.nilable(String),
          tailscale_ips: T::Array[String],
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # IPv4 subnets of the Network that the router advertises to the tailnet. Each
        # entry is a canonical CIDR that the Network routes. Default, loopback,
        # link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
        # are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
        advertised_routes: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # The router's address on the Network, from `172.27.254.0/24`. Tailnet traffic
        # enters the Network from this address.
        customer_address: nil,
        # The router's node id on the tailnet. Set once the router has enrolled.
        device_id: nil,
        # A user specified name for the router.
        name: nil,
        # The id of the Network the router is attached to.
        network_id: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The code of the region the router is created in. `GET /network_coverage` lists
        # the regions whose `available_services` include `tailscale_subnet_router`.
        region_code: nil,
        # `provisioning`: Telnyx is creating the router or applying a change.
        # `provisioned`: the router is on the tailnet and advertises its routes; the
        # tailnet still approves them. `failed`: enrollment did not complete, and `PATCH`
        # retries it. `deleting`: the router is being removed.
        status: nil,
        # The name of the tailnet the router is enrolled in. Set once the router has
        # enrolled.
        tailnet_name: nil,
        # The router's addresses on the tailnet. Empty until the router has enrolled.
        tailscale_ips: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            advertised_routes: T::Array[String],
            created_at: Time,
            customer_address: String,
            device_id: T.nilable(String),
            name: String,
            network_id: String,
            record_type: String,
            region_code: String,
            status: Telnyx::TailscaleSubnetRouter::Status::TaggedSymbol,
            tailnet_name: T.nilable(String),
            tailscale_ips: T::Array[String],
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # `provisioning`: Telnyx is creating the router or applying a change.
      # `provisioned`: the router is on the tailnet and advertises its routes; the
      # tailnet still approves them. `failed`: enrollment did not complete, and `PATCH`
      # retries it. `deleting`: the router is being removed.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::TailscaleSubnetRouter::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROVISIONING =
          T.let(
            :provisioning,
            Telnyx::TailscaleSubnetRouter::Status::TaggedSymbol
          )
        PROVISIONED =
          T.let(
            :provisioned,
            Telnyx::TailscaleSubnetRouter::Status::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Telnyx::TailscaleSubnetRouter::Status::TaggedSymbol)
        DELETING =
          T.let(:deleting, Telnyx::TailscaleSubnetRouter::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::TailscaleSubnetRouter::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
