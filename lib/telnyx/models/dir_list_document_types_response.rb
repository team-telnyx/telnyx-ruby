# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#list_document_types
    class DirListDocumentTypesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DirListDocumentTypesResponse::Data>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirListDocumentTypesResponse::Data] }

      # @!attribute meta
      #   JSON:API pagination metadata returned with every paginated list response. Page
      #   numbering is 1-based. `page_size` reports the number of items actually returned
      #   in `data` for this page; the requested size is taken from the `page[size]` query
      #   parameter.
      #
      #   @return [Telnyx::Models::BrandedCallingPaginationMeta]
      required :meta, -> { Telnyx::BrandedCallingPaginationMeta }

      # @!method initialize(data:, meta:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirListDocumentTypesResponse} for more details.
      #
      #   @param data [Array<Telnyx::Models::DirListDocumentTypesResponse::Data>]
      #
      #   @param meta [Telnyx::Models::BrandedCallingPaginationMeta] JSON:API pagination metadata returned with every paginated list response. Page n

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute short_name
        #   Stable identifier passed to `Document.document_type`.
        #
        #   @return [String, nil]
        optional :short_name, String

        # @!method initialize(description: nil, short_name: nil)
        #   Single supported document type.
        #
        #   @param description [String]
        #
        #   @param short_name [String] Stable identifier passed to `Document.document_type`.
      end
    end
  end
end
