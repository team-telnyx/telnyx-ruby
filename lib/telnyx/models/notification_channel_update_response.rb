# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationChannels#update
    class NotificationChannelUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A Notification Channel
      #
      #   @return [Telnyx::Models::NotificationChannel, nil]
      optional :data, -> { Telnyx::NotificationChannel }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NotificationChannel] A Notification Channel
    end
  end
end
