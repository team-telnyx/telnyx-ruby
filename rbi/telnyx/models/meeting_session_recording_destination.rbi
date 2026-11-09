# typed: strong

module Telnyx
  module Models
    class MeetingSessionRecordingDestination < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MeetingSessionRecordingDestination,
            Telnyx::Internal::AnyHash
          )
        end

      # Existing accessible bucket. Consecutive dots and IPv4-address names are
      # rejected.
      sig { returns(String) }
      attr_accessor :bucket

      # Optional object-key prefix. One trailing slash is normalized. Empty path
      # segments, . and .. segments are rejected.
      sig { returns(T.nilable(String)) }
      attr_reader :prefix

      sig { params(prefix: String).void }
      attr_writer :prefix

      # Customer-owned Telnyx Storage destination for recording exports. Uses the
      # authenticated organization and user; do not supply credentials, region,
      # organization ID or object key.
      sig { params(bucket: String, prefix: String).returns(T.attached_class) }
      def self.new(
        # Existing accessible bucket. Consecutive dots and IPv4-address names are
        # rejected.
        bucket:,
        # Optional object-key prefix. One trailing slash is normalized. Empty path
        # segments, . and .. segments are rejected.
        prefix: nil
      )
      end

      sig { override.returns({ bucket: String, prefix: String }) }
      def to_hash
      end
    end
  end
end
