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
      #   @return [Telnyx::Models::DirListDocumentTypesResponse::Meta]
      required :meta, -> { Telnyx::Models::DirListDocumentTypesResponse::Meta }

      # @!method initialize(data:, meta:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirListDocumentTypesResponse} for more details.
      #
      #   @param data [Array<Telnyx::Models::DirListDocumentTypesResponse::Data>]
      #
      #   @param meta [Telnyx::Models::DirListDocumentTypesResponse::Meta] JSON:API pagination metadata returned with every paginated list response. Page n

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

      # @see Telnyx::Models::DirListDocumentTypesResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #   1-based index of this page. Echoes the `page[number]` query parameter (default
        #   `1`).
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #   Number of items returned in this page's `data` array. Capped at 250.
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute total_pages
        #   Total number of pages available given the current `page_size`.
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!attribute total_results
        #   Total number of items across all pages (excludes soft-deleted rows).
        #
        #   @return [Integer]
        required :total_results, Integer

        # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DirListDocumentTypesResponse::Meta} for more details.
        #
        #   JSON:API pagination metadata returned with every paginated list response. Page
        #   numbering is 1-based. `page_size` reports the number of items actually returned
        #   in `data` for this page; the requested size is taken from the `page[size]` query
        #   parameter.
        #
        #   @param page_number [Integer] 1-based index of this page. Echoes the `page[number]` query parameter (default `
        #
        #   @param page_size [Integer] Number of items returned in this page's `data` array. Capped at 250.
        #
        #   @param total_pages [Integer] Total number of pages available given the current `page_size`.
        #
        #   @param total_results [Integer] Total number of items across all pages (excludes soft-deleted rows).
      end
    end
  end
end
