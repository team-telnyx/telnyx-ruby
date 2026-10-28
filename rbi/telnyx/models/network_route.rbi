# typed: strong

module Telnyx
  module Models
    class NetworkRoute < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::NetworkRoute, Telnyx::Internal::AnyHash) }

      # The IPv4 CIDR the route covers.
      sig { returns(T.nilable(String)) }
      attr_reader :cidr

      sig { params(cidr: String).void }
      attr_writer :cidr

      # The id of the Network the route belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :network_id

      sig { params(network_id: String).void }
      attr_writer :network_id

      # Where the Network sends traffic for the route's CIDR.
      sig { returns(T.nilable(Telnyx::NetworkRoute::NextHop)) }
      attr_reader :next_hop

      sig { params(next_hop: Telnyx::NetworkRoute::NextHop::OrHash).void }
      attr_writer :next_hop

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

      # `static` for a route added with `POST /network_routes`, `attachment` for a route
      # that another resource installed and removes.
      sig { returns(T.nilable(Telnyx::NetworkRoute::Origin::TaggedSymbol)) }
      attr_reader :origin

      sig { params(origin: Telnyx::NetworkRoute::Origin::OrSymbol).void }
      attr_writer :origin

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # `pending` until Telnyx installs the route on the Network, then `active`.
      # `inactive` while a tunnel next hop has no connected process. `failed` (Preview,
      # not reported yet) when Telnyx could not install the route.
      sig { returns(T.nilable(Telnyx::NetworkRoute::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::NetworkRoute::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          id: String,
          cidr: String,
          created_at: Time,
          network_id: String,
          next_hop: Telnyx::NetworkRoute::NextHop::OrHash,
          origin: Telnyx::NetworkRoute::Origin::OrSymbol,
          record_type: String,
          status: Telnyx::NetworkRoute::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # The IPv4 CIDR the route covers.
        cidr: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # The id of the Network the route belongs to.
        network_id: nil,
        # Where the Network sends traffic for the route's CIDR.
        next_hop: nil,
        # `static` for a route added with `POST /network_routes`, `attachment` for a route
        # that another resource installed and removes.
        origin: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # `pending` until Telnyx installs the route on the Network, then `active`.
        # `inactive` while a tunnel next hop has no connected process. `failed` (Preview,
        # not reported yet) when Telnyx could not install the route.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cidr: String,
            created_at: Time,
            network_id: String,
            next_hop: Telnyx::NetworkRoute::NextHop,
            origin: Telnyx::NetworkRoute::Origin::TaggedSymbol,
            record_type: String,
            status: Telnyx::NetworkRoute::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class NextHop < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::NetworkRoute::NextHop, Telnyx::Internal::AnyHash)
          end

        # The id of the tunnel or attachment.
        sig { returns(String) }
        attr_accessor :id

        # The type of the next hop. Routes added with `POST /network_routes` use `tunnel`.
        # Routes that attachments install carry the attachment's type.
        sig { returns(Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol) }
        attr_accessor :type

        # Where the Network sends traffic for the route's CIDR.
        sig do
          params(
            id: String,
            type: Telnyx::NetworkRoute::NextHop::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the tunnel or attachment.
          id:,
          # The type of the next hop. Routes added with `POST /network_routes` use `tunnel`.
          # Routes that attachments install carry the attachment's type.
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              type: Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of the next hop. Routes added with `POST /network_routes` use `tunnel`.
        # Routes that attachments install carry the attachment's type.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::NetworkRoute::NextHop::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TUNNEL =
            T.let(:tunnel, Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol)
          WIREGUARD_PEER =
            T.let(
              :wireguard_peer,
              Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol
            )
          WIREGUARD_INTERFACE =
            T.let(
              :wireguard_interface,
              Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol
            )
          PRIVATE_WIRELESS_GATEWAY =
            T.let(
              :private_wireless_gateway,
              Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol
            )
          VIRTUAL_CROSS_CONNECT =
            T.let(
              :virtual_cross_connect,
              Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol
            )
          IPSEC_TUNNEL =
            T.let(
              :ipsec_tunnel,
              Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol
            )
          PUBLIC_INTERNET_GATEWAY =
            T.let(
              :public_internet_gateway,
              Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::NetworkRoute::NextHop::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # `static` for a route added with `POST /network_routes`, `attachment` for a route
      # that another resource installed and removes.
      module Origin
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::NetworkRoute::Origin) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STATIC = T.let(:static, Telnyx::NetworkRoute::Origin::TaggedSymbol)
        ATTACHMENT =
          T.let(:attachment, Telnyx::NetworkRoute::Origin::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::NetworkRoute::Origin::TaggedSymbol])
        end
        def self.values
        end
      end

      # `pending` until Telnyx installs the route on the Network, then `active`.
      # `inactive` while a tunnel next hop has no connected process. `failed` (Preview,
      # not reported yet) when Telnyx could not install the route.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::NetworkRoute::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, Telnyx::NetworkRoute::Status::TaggedSymbol)
        ACTIVE = T.let(:active, Telnyx::NetworkRoute::Status::TaggedSymbol)
        INACTIVE = T.let(:inactive, Telnyx::NetworkRoute::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::NetworkRoute::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::NetworkRoute::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
