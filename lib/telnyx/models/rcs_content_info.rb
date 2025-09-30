# frozen_string_literal: true

module Telnyx
  module Models
    class RcsContentInfo < Telnyx::Internal::Type::BaseModel
      # @!attribute file_url
      #   Publicly reachable URL of the file.
      #
      #   @return [String]
      required :file_url, String

      # @!attribute force_refresh
      #   If set the URL content will not be cached.
      #
      #   @return [Boolean, nil]
      optional :force_refresh, Telnyx::Internal::Type::Boolean

      # @!attribute thumbnail_url
      #   Publicly reachable URL of the thumbnail. Maximum size of 100 kB.
      #
      #   @return [String, nil]
      optional :thumbnail_url, String

      # @!method initialize(file_url:, force_refresh: nil, thumbnail_url: nil)
      #   @param file_url [String] Publicly reachable URL of the file.
      #
      #   @param force_refresh [Boolean] If set the URL content will not be cached.
      #
      #   @param thumbnail_url [String] Publicly reachable URL of the thumbnail. Maximum size of 100 kB.
    end
  end
end
