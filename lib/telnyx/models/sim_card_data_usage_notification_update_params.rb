# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardDataUsageNotifications#update
    class SimCardDataUsageNotificationUpdateParams < Telnyx::Models::SimCardDataUsageNotification
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute sim_card_data_usage_notification_id
      #
      #   @return [String]
      required :sim_card_data_usage_notification_id, String

      # @!method initialize(sim_card_data_usage_notification_id:, request_options: {})
      #   @param sim_card_data_usage_notification_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
