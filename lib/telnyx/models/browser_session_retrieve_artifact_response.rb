# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BrowserSessions#retrieve_artifact
    class BrowserSessionRetrieveArtifactResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data, nil]
      optional :data, -> { Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data]

      # @see Telnyx::Models::BrowserSessionRetrieveArtifactResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute action_id
        #
        #   @return [String]
        required :action_id, String

        # @!attribute checksum
        #
        #   @return [String]
        required :checksum, String

        # @!attribute content_type
        #
        #   @return [String]
        required :content_type, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute download_url
        #   Signed relative path (starts with /v2/artifact_downloads/). Prepend your API
        #   host, e.g. https://api.telnyx.com, before calling it.
        #
        #   @return [String]
        required :download_url, String

        # @!attribute expires_at
        #
        #   @return [Time]
        required :expires_at, Time

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String

        # @!attribute size_bytes
        #
        #   @return [Integer]
        required :size_bytes, Integer

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!method initialize(id:, action_id:, checksum:, content_type:, created_at:, download_url:, expires_at:, session_id:, size_bytes:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data} for more details.
        #
        #   @param id [String]
        #
        #   @param action_id [String]
        #
        #   @param checksum [String]
        #
        #   @param content_type [String]
        #
        #   @param created_at [Time]
        #
        #   @param download_url [String] Signed relative path (starts with /v2/artifact_downloads/). Prepend your API hos
        #
        #   @param expires_at [Time]
        #
        #   @param session_id [String]
        #
        #   @param size_bytes [Integer]
        #
        #   @param type [String]
      end
    end
  end
end
