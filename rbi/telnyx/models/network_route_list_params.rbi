# typed: strong

module Telnyx
  module Models
    class NetworkRouteListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NetworkRouteListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[network_id], filter[origin], filter[next_hop.type], filter[cidr],
      # filter[status]
      sig { returns(Telnyx::NetworkRouteListParams::Filter) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::NetworkRouteListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[after],
      # page[limit]
      sig { returns(T.nilable(Telnyx::NetworkRouteListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::NetworkRouteListParams::Page::OrHash).void }
      attr_writer :page

      # Sorts the results by a field, ascending, or descending with a leading `-`. The
      # default is `-created_at`.
      sig { returns(T.nilable(Telnyx::NetworkRouteListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::NetworkRouteListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::NetworkRouteListParams::Filter::OrHash,
          page: Telnyx::NetworkRouteListParams::Page::OrHash,
          sort: Telnyx::NetworkRouteListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[network_id], filter[origin], filter[next_hop.type], filter[cidr],
        # filter[status]
        filter:,
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[limit]
        page: nil,
        # Sorts the results by a field, ascending, or descending with a leading `-`. The
        # default is `-created_at`.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::NetworkRouteListParams::Filter,
            page: Telnyx::NetworkRouteListParams::Page,
            sort: Telnyx::NetworkRouteListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NetworkRouteListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # The id of the Network whose route table is returned. Required.
        sig { returns(String) }
        attr_accessor :network_id

        # Only routes with this CIDR.
        sig { returns(T.nilable(String)) }
        attr_reader :cidr

        sig { params(cidr: String).void }
        attr_writer :cidr

        # Only routes whose next hop has this type.
        sig do
          returns(
            T.nilable(
              Telnyx::NetworkRouteListParams::Filter::NextHopType::OrSymbol
            )
          )
        end
        attr_reader :next_hop_type

        sig do
          params(
            next_hop_type:
              Telnyx::NetworkRouteListParams::Filter::NextHopType::OrSymbol
          ).void
        end
        attr_writer :next_hop_type

        # Only routes of this origin.
        sig do
          returns(
            T.nilable(Telnyx::NetworkRouteListParams::Filter::Origin::OrSymbol)
          )
        end
        attr_reader :origin

        sig do
          params(
            origin: Telnyx::NetworkRouteListParams::Filter::Origin::OrSymbol
          ).void
        end
        attr_writer :origin

        # Only routes with this status.
        sig do
          returns(
            T.nilable(Telnyx::NetworkRouteListParams::Filter::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::NetworkRouteListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[network_id], filter[origin], filter[next_hop.type], filter[cidr],
        # filter[status]
        sig do
          params(
            network_id: String,
            cidr: String,
            next_hop_type:
              Telnyx::NetworkRouteListParams::Filter::NextHopType::OrSymbol,
            origin: Telnyx::NetworkRouteListParams::Filter::Origin::OrSymbol,
            status: Telnyx::NetworkRouteListParams::Filter::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the Network whose route table is returned. Required.
          network_id:,
          # Only routes with this CIDR.
          cidr: nil,
          # Only routes whose next hop has this type.
          next_hop_type: nil,
          # Only routes of this origin.
          origin: nil,
          # Only routes with this status.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              network_id: String,
              cidr: String,
              next_hop_type:
                Telnyx::NetworkRouteListParams::Filter::NextHopType::OrSymbol,
              origin: Telnyx::NetworkRouteListParams::Filter::Origin::OrSymbol,
              status: Telnyx::NetworkRouteListParams::Filter::Status::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Only routes whose next hop has this type.
        module NextHopType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::NetworkRouteListParams::Filter::NextHopType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TUNNEL =
            T.let(
              :tunnel,
              Telnyx::NetworkRouteListParams::Filter::NextHopType::TaggedSymbol
            )
          WIREGUARD_PEER =
            T.let(
              :wireguard_peer,
              Telnyx::NetworkRouteListParams::Filter::NextHopType::TaggedSymbol
            )
          WIREGUARD_INTERFACE =
            T.let(
              :wireguard_interface,
              Telnyx::NetworkRouteListParams::Filter::NextHopType::TaggedSymbol
            )
          PRIVATE_WIRELESS_GATEWAY =
            T.let(
              :private_wireless_gateway,
              Telnyx::NetworkRouteListParams::Filter::NextHopType::TaggedSymbol
            )
          VIRTUAL_CROSS_CONNECT =
            T.let(
              :virtual_cross_connect,
              Telnyx::NetworkRouteListParams::Filter::NextHopType::TaggedSymbol
            )
          IPSEC_TUNNEL =
            T.let(
              :ipsec_tunnel,
              Telnyx::NetworkRouteListParams::Filter::NextHopType::TaggedSymbol
            )
          PUBLIC_INTERNET_GATEWAY =
            T.let(
              :public_internet_gateway,
              Telnyx::NetworkRouteListParams::Filter::NextHopType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NetworkRouteListParams::Filter::NextHopType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Only routes of this origin.
        module Origin
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::NetworkRouteListParams::Filter::Origin)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC =
            T.let(
              :static,
              Telnyx::NetworkRouteListParams::Filter::Origin::TaggedSymbol
            )
          ATTACHMENT =
            T.let(
              :attachment,
              Telnyx::NetworkRouteListParams::Filter::Origin::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NetworkRouteListParams::Filter::Origin::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Only routes with this status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::NetworkRouteListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::NetworkRouteListParams::Filter::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Telnyx::NetworkRouteListParams::Filter::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Telnyx::NetworkRouteListParams::Filter::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::NetworkRouteListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NetworkRouteListParams::Filter::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NetworkRouteListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The cursor from `meta.cursors.after` of the previous page.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The number of results per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[limit]
        sig { params(after: String, limit: Integer).returns(T.attached_class) }
        def self.new(
          # The cursor from `meta.cursors.after` of the previous page.
          after: nil,
          # The number of results per page.
          limit: nil
        )
        end

        sig { override.returns({ after: String, limit: Integer }) }
        def to_hash
        end
      end

      # Sorts the results by a field, ascending, or descending with a leading `-`. The
      # default is `-created_at`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::NetworkRouteListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CIDR = T.let(:cidr, Telnyx::NetworkRouteListParams::Sort::TaggedSymbol)
        MINUS_CIDR =
          T.let(:"-cidr", Telnyx::NetworkRouteListParams::Sort::TaggedSymbol)
        STATUS =
          T.let(:status, Telnyx::NetworkRouteListParams::Sort::TaggedSymbol)
        STATUS_DESC =
          T.let(:"-status", Telnyx::NetworkRouteListParams::Sort::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Telnyx::NetworkRouteListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::NetworkRouteListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::NetworkRouteListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
