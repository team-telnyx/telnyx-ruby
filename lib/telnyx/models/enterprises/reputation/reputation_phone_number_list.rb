# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#associate
        class ReputationPhoneNumberList < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Enterprises::Reputation::ReputationPhoneNumber] }

          # @!attribute meta
          #   JSON:API pagination metadata returned with every paginated list response. Page
          #   numbering is 1-based. `page_size` reports the number of items actually returned
          #   in `data` for this page; the requested size is taken from the `page[size]` query
          #   parameter.
          #
          #   @return [Telnyx::Models::NumberReputationPaginationMeta]
          required :meta, -> { Telnyx::NumberReputationPaginationMeta }

          # @!method initialize(data:, meta:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumberList} for more
          #   details.
          #
          #   @param data [Array<Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber>]
          #
          #   @param meta [Telnyx::Models::NumberReputationPaginationMeta] JSON:API pagination metadata returned with every paginated list response. Page n
        end
      end

      ReputationPhoneNumberList = Reputation::ReputationPhoneNumberList
    end
  end
end
