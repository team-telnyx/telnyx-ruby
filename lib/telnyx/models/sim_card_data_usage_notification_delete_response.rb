# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardDataUsageNotifications#delete
    class SimCardDataUsageNotificationDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   The SIM card individual data usage notification information.
      #
      #   @return [Telnyx::Models::SimCardDataUsageNotification, nil]
      optional :data, -> { Telnyx::SimCardDataUsageNotification }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SimCardDataUsageNotification] The SIM card individual data usage notification information.
    end
  end
end
