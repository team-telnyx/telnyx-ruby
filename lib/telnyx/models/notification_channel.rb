# frozen_string_literal: true

module Telnyx
  module Models
    class NotificationChannel < Telnyx::Internal::Type::BaseModel
      # @!attribute channel_destination
      #   The destination associated with the channel type.
      #
      #   @return [String, nil]
      optional :channel_destination, String

      # @!attribute channel_type_id
      #   A Channel Type ID
      #
      #   @return [Symbol, Telnyx::Models::NotificationChannel::ChannelTypeID, nil]
      optional :channel_type_id, enum: -> { Telnyx::NotificationChannel::ChannelTypeID }

      # @!attribute notification_profile_id
      #   A UUID reference to the associated Notification Profile.
      #
      #   @return [String, nil]
      optional :notification_profile_id, String

      response_only do
        # @!attribute id
        #   A UUID.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, channel_destination: nil, channel_type_id: nil, created_at: nil, notification_profile_id: nil, updated_at: nil)
      #   A Notification Channel
      #
      #   @param id [String] A UUID.
      #
      #   @param channel_destination [String] The destination associated with the channel type.
      #
      #   @param channel_type_id [Symbol, Telnyx::Models::NotificationChannel::ChannelTypeID] A Channel Type ID
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param notification_profile_id [String] A UUID reference to the associated Notification Profile.
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

      # A Channel Type ID
      #
      # @see Telnyx::Models::NotificationChannel#channel_type_id
      module ChannelTypeID
        extend Telnyx::Internal::Type::Enum

        SMS = :sms
        VOICE = :voice
        EMAIL = :email
        WEBHOOK = :webhook

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
