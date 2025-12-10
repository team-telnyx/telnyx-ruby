# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationEvents#list
    class NotificationEventListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute enabled
      #
      #   @return [Boolean, nil]
      optional :enabled, Telnyx::Internal::Type::Boolean

      # @!attribute name
      #   A human readable name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute notification_category
      #
      #   @return [String, nil]
      optional :notification_category, String

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      response_only do
        # @!attribute id
        #   A UUID.
        #
        #   @return [String, nil]
        optional :id, String
      end

      # @!method initialize(id: nil, created_at: nil, enabled: nil, name: nil, notification_category: nil, updated_at: nil)
      #   An object representing the available notifications.
      #
      #   @param id [String] A UUID.
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param enabled [Boolean]
      #
      #   @param name [String] A human readable name.
      #
      #   @param notification_category [String]
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.
    end
  end
end
