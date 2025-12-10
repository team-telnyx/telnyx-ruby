# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationSettings#list
    class NotificationSettingListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NotificationSetting>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NotificationSetting] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NotificationSetting>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
