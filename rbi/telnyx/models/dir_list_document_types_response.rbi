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
      sig { returns(Telnyx::BrandedCallingPaginationMeta) }
      attr_reader :meta

      sig { params(meta: Telnyx::BrandedCallingPaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::DirListDocumentTypesResponse::Data::OrHash
            ],
          meta: Telnyx::BrandedCallingPaginationMeta::OrHash
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
            meta: Telnyx::BrandedCallingPaginationMeta
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
    end
  end
end
