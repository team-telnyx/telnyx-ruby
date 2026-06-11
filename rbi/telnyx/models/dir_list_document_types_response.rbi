# typed: strong

module Telnyx
  module Models
    class DirListDocumentTypesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DirListDocumentTypesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[Telnyx::Models::DirListDocumentTypesResponse::Data])
      end
      attr_accessor :data

      # JSON:API pagination metadata returned with every paginated list response. Page
      # numbering is 1-based. `page_size` reports the number of items actually returned
      # in `data` for this page; the requested size is taken from the `page[size]` query
      # parameter.
      sig { returns(Telnyx::Models::DirListDocumentTypesResponse::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::DirListDocumentTypesResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::DirListDocumentTypesResponse::Data::OrHash
            ],
          meta: Telnyx::Models::DirListDocumentTypesResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # JSON:API pagination metadata returned with every paginated list response. Page
        # numbering is 1-based. `page_size` reports the number of items actually returned
        # in `data` for this page; the requested size is taken from the `page[size]` query
        # parameter.
        meta:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::DirListDocumentTypesResponse::Data],
            meta: Telnyx::Models::DirListDocumentTypesResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DirListDocumentTypesResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Stable identifier passed to `Document.document_type`.
        sig { returns(T.nilable(String)) }
        attr_reader :short_name

        sig { params(short_name: String).void }
        attr_writer :short_name

        # Single supported document type.
        sig do
          params(description: String, short_name: String).returns(
            T.attached_class
          )
        end
        def self.new(
          description: nil,
          # Stable identifier passed to `Document.document_type`.
          short_name: nil
        )
        end

        sig { override.returns({ description: String, short_name: String }) }
        def to_hash
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DirListDocumentTypesResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # 1-based index of this page. Echoes the `page[number]` query parameter (default
        # `1`).
        sig { returns(Integer) }
        attr_accessor :page_number

        # Number of items returned in this page's `data` array. Capped at 250.
        sig { returns(Integer) }
        attr_accessor :page_size

        # Total number of pages available given the current `page_size`.
        sig { returns(Integer) }
        attr_accessor :total_pages

        # Total number of items across all pages (excludes soft-deleted rows).
        sig { returns(Integer) }
        attr_accessor :total_results

        # JSON:API pagination metadata returned with every paginated list response. Page
        # numbering is 1-based. `page_size` reports the number of items actually returned
        # in `data` for this page; the requested size is taken from the `page[size]` query
        # parameter.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # 1-based index of this page. Echoes the `page[number]` query parameter (default
          # `1`).
          page_number:,
          # Number of items returned in this page's `data` array. Capped at 250.
          page_size:,
          # Total number of pages available given the current `page_size`.
          total_pages:,
          # Total number of items across all pages (excludes soft-deleted rows).
          total_results:
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
