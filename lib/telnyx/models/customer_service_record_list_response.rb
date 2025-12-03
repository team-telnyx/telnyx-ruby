# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CustomerServiceRecords#list
    class CustomerServiceRecordListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::CustomerServiceRecord>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomerServiceRecord] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::CustomerServiceRecord>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
