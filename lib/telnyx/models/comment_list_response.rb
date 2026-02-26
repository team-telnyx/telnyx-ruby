# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Comments#list
    class CommentListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::Comment>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Comment] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::Comment>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
