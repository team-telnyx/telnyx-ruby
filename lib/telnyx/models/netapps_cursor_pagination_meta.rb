# frozen_string_literal: true

module Telnyx
  module Models
    class NetappsCursorPaginationMeta < Telnyx::Internal::Type::BaseModel
      # @!attribute cursors
      #   Opaque cursors. Absent keys mean there is no such page.
      #
      #   @return [Telnyx::Models::NetappsCursorPaginationMeta::Cursors, nil]
      optional :cursors, -> { Telnyx::NetappsCursorPaginationMeta::Cursors }

      # @!attribute next_
      #   The path of the next page, with the same query parameters. Absent on the last
      #   page.
      #
      #   @return [String, nil]
      optional :next_, String, api_name: :next

      # @!attribute previous
      #   The path of the previous page. Present when the request used `page[after]`.
      #
      #   @return [String, nil]
      optional :previous, String

      # @!method initialize(cursors: nil, next_: nil, previous: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NetappsCursorPaginationMeta} for more details.
      #
      #   @param cursors [Telnyx::Models::NetappsCursorPaginationMeta::Cursors] Opaque cursors. Absent keys mean there is no such page.
      #
      #   @param next_ [String] The path of the next page, with the same query parameters. Absent on the last pa
      #
      #   @param previous [String] The path of the previous page. Present when the request used `page[after]`.

      # @see Telnyx::Models::NetappsCursorPaginationMeta#cursors
      class Cursors < Telnyx::Internal::Type::BaseModel
        # @!attribute after
        #   Pass as `page[after]` to fetch the next page. Absent on the last page.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   The cursor of the previous page. Present when the request used `page[after]`.
        #
        #   @return [String, nil]
        optional :before, String

        # @!method initialize(after: nil, before: nil)
        #   Opaque cursors. Absent keys mean there is no such page.
        #
        #   @param after [String] Pass as `page[after]` to fetch the next page. Absent on the last page.
        #
        #   @param before [String] The cursor of the previous page. Present when the request used `page[after]`.
      end
    end
  end
end
