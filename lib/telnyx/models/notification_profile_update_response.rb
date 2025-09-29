# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationProfiles#update
    class NotificationProfileUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A Collection of Notification Channels
      #
      #   @return [Telnyx::Models::NotificationProfile, nil]
      optional :data, -> { Telnyx::NotificationProfile }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NotificationProfile] A Collection of Notification Channels
    end
  end
end
