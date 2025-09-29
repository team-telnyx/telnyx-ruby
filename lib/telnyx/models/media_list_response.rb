# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Media#list
    class MediaListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MediaResource>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MediaResource] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::MediaResource>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
