# frozen_string_literal: true

module Telnyx
  module Models
    class MeetingSessionRecordingDestination < Telnyx::Internal::Type::BaseModel
      # @!attribute bucket
      #   Existing accessible bucket. Consecutive dots and IPv4-address names are
      #   rejected.
      #
      #   @return [String]
      required :bucket, String

      # @!attribute prefix
      #   Optional object-key prefix. One trailing slash is normalized. Empty path
      #   segments, . and .. segments are rejected.
      #
      #   @return [String, nil]
      optional :prefix, String

      # @!method initialize(bucket:, prefix: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionRecordingDestination} for more details.
      #
      #   Customer-owned Telnyx Storage destination for recording exports. Uses the
      #   authenticated organization and user; do not supply credentials, region,
      #   organization ID or object key.
      #
      #   @param bucket [String] Existing accessible bucket. Consecutive dots and IPv4-address names are rejected
      #
      #   @param prefix [String] Optional object-key prefix. One trailing slash is normalized. Empty path segment
    end
  end
end
