# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ShortCodes#list
    class ShortCodeListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::ShortCode>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ShortCode] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::ShortCode>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
