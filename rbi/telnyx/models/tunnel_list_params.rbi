# typed: strong

module Telnyx
  module Models
    class TunnelListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TunnelListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[name],
      # filter[status]
      sig { returns(T.nilable(Telnyx::TunnelListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::TunnelListParams::Filter::OrHash).void }
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[after],
      # page[limit]
      sig { returns(T.nilable(Telnyx::TunnelListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::TunnelListParams::Page::OrHash).void }
      attr_writer :page

      # Sorts the results by a field, ascending, or descending with a leading `-`. The
      # default is `-created_at`.
      sig { returns(T.nilable(Telnyx::TunnelListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::TunnelListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::TunnelListParams::Filter::OrHash,
          page: Telnyx::TunnelListParams::Page::OrHash,
          sort: Telnyx::TunnelListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[name],
        # filter[status]
        filter: nil,
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
            filter: Telnyx::TunnelListParams::Filter,
            page: Telnyx::TunnelListParams::Page,
            sort: Telnyx::TunnelListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::TunnelListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # The name of the tunnel.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The status of the tunnel.
        sig do
          returns(T.nilable(Telnyx::TunnelListParams::Filter::Status::OrSymbol))
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::TunnelListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally: filter[name],
        # filter[status]
        sig do
          params(
            name: String,
            status: Telnyx::TunnelListParams::Filter::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the tunnel.
          name: nil,
          # The status of the tunnel.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              status: Telnyx::TunnelListParams::Filter::Status::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The status of the tunnel.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::TunnelListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INACTIVE =
            T.let(
              :inactive,
              Telnyx::TunnelListParams::Filter::Status::TaggedSymbol
            )
          HEALTHY =
            T.let(
              :healthy,
              Telnyx::TunnelListParams::Filter::Status::TaggedSymbol
            )
          DEGRADED =
            T.let(
              :degraded,
              Telnyx::TunnelListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::TunnelListParams::Filter::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::TunnelListParams::Page, Telnyx::Internal::AnyHash)
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
          T.type_alias { T.all(Symbol, Telnyx::TunnelListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME = T.let(:name, Telnyx::TunnelListParams::Sort::TaggedSymbol)
        NAME_DESC =
          T.let(:"-name", Telnyx::TunnelListParams::Sort::TaggedSymbol)
        STATUS = T.let(:status, Telnyx::TunnelListParams::Sort::TaggedSymbol)
        STATUS_DESC =
          T.let(:"-status", Telnyx::TunnelListParams::Sort::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Telnyx::TunnelListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(:"-created_at", Telnyx::TunnelListParams::Sort::TaggedSymbol)
        UPDATED_AT =
          T.let(:updated_at, Telnyx::TunnelListParams::Sort::TaggedSymbol)
        UPDATED_AT_DESC =
          T.let(:"-updated_at", Telnyx::TunnelListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::TunnelListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
