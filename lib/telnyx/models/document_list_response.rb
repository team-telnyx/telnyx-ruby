# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Documents#list
    class DocumentListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DocServiceDocument>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DocServiceDocument] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::DocServiceDocument>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
