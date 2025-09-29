# frozen_string_literal: true

module Telnyx
  module Models
    class MediaResource < Telnyx::Internal::Type::BaseModel
      # @!attribute content_type
      #   Content type of the file
      #
      #   @return [String, nil]
      optional :content_type, String

      # @!attribute created_at
      #   ISO 8601 formatted date of when the media resource was created
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute expires_at
      #   ISO 8601 formatted date of when the media resource will expire and be deleted.
      #
      #   @return [String, nil]
      optional :expires_at, String

      # @!attribute media_name
      #   Uniquely identifies a media resource.
      #
      #   @return [String, nil]
      optional :media_name, String

      # @!attribute updated_at
      #   ISO 8601 formatted date of when the media resource was last updated
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!method initialize(content_type: nil, created_at: nil, expires_at: nil, media_name: nil, updated_at: nil)
      #   @param content_type [String] Content type of the file
      #
      #   @param created_at [String] ISO 8601 formatted date of when the media resource was created
      #
      #   @param expires_at [String] ISO 8601 formatted date of when the media resource will expire and be deleted.
      #
      #   @param media_name [String] Uniquely identifies a media resource.
      #
      #   @param updated_at [String] ISO 8601 formatted date of when the media resource was last updated
    end
  end
end
