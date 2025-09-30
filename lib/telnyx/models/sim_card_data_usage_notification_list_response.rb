# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardDataUsageNotifications#list
    class SimCardDataUsageNotificationListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::SimCardDataUsageNotification>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SimCardDataUsageNotification] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::SimCardDataUsageNotification>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
