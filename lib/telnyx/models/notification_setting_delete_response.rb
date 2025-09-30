# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationSettings#delete
    class NotificationSettingDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NotificationSetting, nil]
      optional :data, -> { Telnyx::NotificationSetting }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NotificationSetting]
    end
  end
end
