# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPRanges#list
    class AccessIPRangeListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AccessIPRange>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AccessIPRange] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMetaCloudflareIPListSync]
      required :meta, -> { Telnyx::PaginationMetaCloudflareIPListSync }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::AccessIPRange>]
      #   @param meta [Telnyx::Models::PaginationMetaCloudflareIPListSync]
    end
  end
end
