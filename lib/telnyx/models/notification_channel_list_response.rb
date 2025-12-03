# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationChannels#list
    class NotificationChannelListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NotificationChannel>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NotificationChannel] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NotificationChannel>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
