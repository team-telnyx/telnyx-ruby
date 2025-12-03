# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationProfiles#list
    class NotificationProfileListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NotificationProfile>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NotificationProfile] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NotificationProfile>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
