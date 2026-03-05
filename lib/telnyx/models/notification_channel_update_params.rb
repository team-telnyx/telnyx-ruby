# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationChannels#update
    class NotificationChannelUpdateParams < Telnyx::Models::NotificationChannel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute notification_channel_id
      #
      #   @return [String]
      required :notification_channel_id, String

      # @!method initialize(notification_channel_id:, request_options: {})
      #   @param notification_channel_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
