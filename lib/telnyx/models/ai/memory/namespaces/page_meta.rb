# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class PageMeta < Telnyx::Internal::Type::BaseModel
            # @!attribute page_number
            #   The page returned, counting from 1.
            #
            #   @return [Integer]
            required :page_number, Integer

            # @!attribute page_size
            #   How many results a page holds.
            #
            #   @return [Integer]
            required :page_size, Integer

            # @!attribute total_pages
            #   Pages that can be requested; 0 when nothing matched. Page until `page_number`
            #   reaches it rather than until a page comes back short: a page can hold fewer than
            #   `page_size` results without being the last. Capped at the deepest page served,
            #   so on a very large listing it covers fewer results than `total_results`.
            #
            #   @return [Integer]
            required :total_pages, Integer

            # @!attribute total_results
            #   Results the request matched, including any past the deepest page.
            #
            #   @return [Integer]
            required :total_results, Integer

            # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Memory::Namespaces::PageMeta} for more details.
            #
            #   Where a listing's page sits in the whole.
            #
            #   A page is a snapshot: the counts it reports and the order it is drawn in both
            #   move as writes land, so paging through a busy namespace can repeat or miss an
            #   entry at a page boundary.
            #
            #   @param page_number [Integer] The page returned, counting from 1.
            #
            #   @param page_size [Integer] How many results a page holds.
            #
            #   @param total_pages [Integer] Pages that can be requested; 0 when nothing matched. Page until `page_number` re
            #
            #   @param total_results [Integer] Results the request matched, including any past the deepest page.
          end
        end
      end
    end
  end
end
