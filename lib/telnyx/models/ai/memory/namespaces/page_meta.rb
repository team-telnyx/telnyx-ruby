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
            #   Results per page.
            #
            #   @return [Integer]
            required :page_size, Integer

            # @!attribute total_pages
            #   Pages that can be requested; 0 when nothing matched.
            #
            #   @return [Integer]
            required :total_pages, Integer

            # @!attribute total_results
            #   Results across every page.
            #
            #   @return [Integer]
            required :total_results, Integer

            # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
            #   @param page_number [Integer] The page returned, counting from 1.
            #
            #   @param page_size [Integer] Results per page.
            #
            #   @param total_pages [Integer] Pages that can be requested; 0 when nothing matched.
            #
            #   @param total_results [Integer] Results across every page.
          end
        end
      end
    end
  end
end
