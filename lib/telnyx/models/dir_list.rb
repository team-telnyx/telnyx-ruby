# frozen_string_literal: true

module Telnyx
  module Models
    class DirList < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DirAPI>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DirAPI] }

      # @!attribute meta
      #   JSON:API pagination metadata returned with every paginated list response. Page
      #   numbering is 1-based. `page_size` reports the number of items actually returned
      #   in `data` for this page; the requested size is taken from the `page[size]` query
      #   parameter.
      #
      #   @return [Telnyx::Models::BrandedCallingPaginationMeta]
      required :meta, -> { Telnyx::BrandedCallingPaginationMeta }

      # @!method initialize(data:, meta:)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::DirList}
      #   for more details.
      #
      #   @param data [Array<Telnyx::Models::DirAPI>]
      #
      #   @param meta [Telnyx::Models::BrandedCallingPaginationMeta] JSON:API pagination metadata returned with every paginated list response. Page n
    end
  end
end
