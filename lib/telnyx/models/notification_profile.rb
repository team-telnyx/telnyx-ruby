# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationProfiles#list
    class NotificationProfile < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #   A human readable name.
      #
      #   @return [String, nil]
      optional :name, String

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

      # @!method initialize(id: nil, created_at: nil, name: nil, updated_at: nil)
      #   A Collection of Notification Channels
      #
      #   @param id [String] A UUID.
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param name [String] A human readable name.
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.
    end
  end
end
