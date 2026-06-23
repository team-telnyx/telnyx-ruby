# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#retrieve_infringement_claims
    class DirRetrieveInfringementClaimsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::InfringementClaim>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InfringementClaim] }

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
      #   {Telnyx::Models::DirRetrieveInfringementClaimsResponse} for more details.
      #
      #   @param data [Array<Telnyx::Models::InfringementClaim>]
      #
      #   @param meta [Telnyx::Models::BrandedCallingPaginationMeta] JSON:API pagination metadata returned with every paginated list response. Page n
    end
  end
end
