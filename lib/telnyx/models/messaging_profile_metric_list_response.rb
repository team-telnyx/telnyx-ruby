# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfileMetrics#list
    class MessagingProfileMetricListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Hash{Symbol=>Object}>, nil]
      optional :data,
               Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

      # @!attribute meta
      #
      #   @return [Telnyx::Models::MessagingPaginationMeta, nil]
      optional :meta, -> { Telnyx::MessagingPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Hash{Symbol=>Object}>]
      #   @param meta [Telnyx::Models::MessagingPaginationMeta]
    end
  end
end
