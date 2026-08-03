# frozen_string_literal: true

module Telnyx
  module Models
    module EmailMessages
      # @see Telnyx::Resources::EmailMessages::Recipients#list
      class RecipientListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::EmailMessages::EmailRecipient>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailMessages::EmailRecipient] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::EmailMessages::RecipientListResponse::Meta]
        required :meta, -> { Telnyx::Models::EmailMessages::RecipientListResponse::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::EmailMessages::EmailRecipient>]
        #   @param meta [Telnyx::Models::EmailMessages::RecipientListResponse::Meta]

        # @see Telnyx::Models::EmailMessages::RecipientListResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute page_size
          #
          #   @return [Integer]
          required :page_size, Integer

          # @!attribute page_cursor
          #   Cursor for the next page. Absent when there are no more results.
          #
          #   @return [String, nil]
          optional :page_cursor, String, nil?: true

          # @!method initialize(page_size:, page_cursor: nil)
          #   @param page_size [Integer]
          #
          #   @param page_cursor [String, nil] Cursor for the next page. Absent when there are no more results.
        end
      end
    end
  end
end
