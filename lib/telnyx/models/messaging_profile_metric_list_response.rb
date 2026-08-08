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
      #   @return [Telnyx::Models::MessagingPaginationMeta0b38e7044b, nil]
      optional :meta, -> { Telnyx::MessagingPaginationMeta0b38e7044b }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Hash{Symbol=>Object}>]
      #   @param meta [Telnyx::Models::MessagingPaginationMeta0b38e7044b]
    end
  end
end
