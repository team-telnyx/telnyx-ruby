# typed: strong

module Telnyx
  module Models
    module Storage
      class CloudfListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Storage::CloudfListParams, Telnyx::Internal::AnyHash)
          end

        # Return only the filesystem whose name matches exactly.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_name

        sig { params(filter_name: String).void }
        attr_writer :filter_name

        # Return only filesystems in this region.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_region

        sig { params(filter_region: String).void }
        attr_writer :filter_region

        # Return only filesystems with this status. Unrecognized values are ignored.
        sig do
          returns(
            T.nilable(Telnyx::Storage::CloudfListParams::FilterStatus::OrSymbol)
          )
        end
        attr_reader :filter_status

        sig do
          params(
            filter_status:
              Telnyx::Storage::CloudfListParams::FilterStatus::OrSymbol
          ).void
        end
        attr_writer :filter_status

        # Opaque cursor from a previous response's `meta.cursors.after`; returns the page
        # after it. Mutually exclusive with `page[before]`.
        sig { returns(T.nilable(String)) }
        attr_reader :page_after

        sig { params(page_after: String).void }
        attr_writer :page_after

        # Opaque cursor from a previous response's `meta.cursors.before`; returns the page
        # before it. Mutually exclusive with `page[after]`.
        sig { returns(T.nilable(String)) }
        attr_reader :page_before

        sig { params(page_before: String).void }
        attr_writer :page_before

        # The number of filesystems to return per page. Values above 250 are treated
        # as 250.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_limit

        sig { params(page_limit: Integer).void }
        attr_writer :page_limit

        # Sort order for the results: a field name for ascending, or the field name
        # prefixed with `-` for descending.
        sig do
          returns(T.nilable(Telnyx::Storage::CloudfListParams::Sort::OrSymbol))
        end
        attr_reader :sort

        sig do
          params(sort: Telnyx::Storage::CloudfListParams::Sort::OrSymbol).void
        end
        attr_writer :sort

        sig do
          params(
            filter_name: String,
            filter_region: String,
            filter_status:
              Telnyx::Storage::CloudfListParams::FilterStatus::OrSymbol,
            page_after: String,
            page_before: String,
            page_limit: Integer,
            sort: Telnyx::Storage::CloudfListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Return only the filesystem whose name matches exactly.
          filter_name: nil,
          # Return only filesystems in this region.
          filter_region: nil,
          # Return only filesystems with this status. Unrecognized values are ignored.
          filter_status: nil,
          # Opaque cursor from a previous response's `meta.cursors.after`; returns the page
          # after it. Mutually exclusive with `page[before]`.
          page_after: nil,
          # Opaque cursor from a previous response's `meta.cursors.before`; returns the page
          # before it. Mutually exclusive with `page[after]`.
          page_before: nil,
          # The number of filesystems to return per page. Values above 250 are treated
          # as 250.
          page_limit: nil,
          # Sort order for the results: a field name for ascending, or the field name
          # prefixed with `-` for descending.
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_name: String,
              filter_region: String,
              filter_status:
                Telnyx::Storage::CloudfListParams::FilterStatus::OrSymbol,
              page_after: String,
              page_before: String,
              page_limit: Integer,
              sort: Telnyx::Storage::CloudfListParams::Sort::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Return only filesystems with this status. Unrecognized values are ignored.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Storage::CloudfListParams::FilterStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROVISIONING =
            T.let(
              :provisioning,
              Telnyx::Storage::CloudfListParams::FilterStatus::TaggedSymbol
            )
          READY =
            T.let(
              :ready,
              Telnyx::Storage::CloudfListParams::FilterStatus::TaggedSymbol
            )
          NEEDS_FORMAT =
            T.let(
              :needs_format,
              Telnyx::Storage::CloudfListParams::FilterStatus::TaggedSymbol
            )
          DELETING =
            T.let(
              :deleting,
              Telnyx::Storage::CloudfListParams::FilterStatus::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Storage::CloudfListParams::FilterStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Storage::CloudfListParams::FilterStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sort order for the results: a field name for ascending, or the field name
        # prefixed with `-` for descending.
        module Sort
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Storage::CloudfListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              Telnyx::Storage::CloudfListParams::Sort::TaggedSymbol
            )
          CREATED_AT_DESC =
            T.let(
              :"-created_at",
              Telnyx::Storage::CloudfListParams::Sort::TaggedSymbol
            )
          UPDATED_AT =
            T.let(
              :updated_at,
              Telnyx::Storage::CloudfListParams::Sort::TaggedSymbol
            )
          UPDATED_AT_DESC =
            T.let(
              :"-updated_at",
              Telnyx::Storage::CloudfListParams::Sort::TaggedSymbol
            )
          NAME =
            T.let(:name, Telnyx::Storage::CloudfListParams::Sort::TaggedSymbol)
          NAME_DESC =
            T.let(
              :"-name",
              Telnyx::Storage::CloudfListParams::Sort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Storage::CloudfListParams::Sort::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
