# typed: strong

module Telnyx
  module Resources
    class MeetingSessions
      # Create and retrieve asynchronous summaries and action-item artifacts.
      class Artifacts
        # Requests asynchronous generation of one `summary` or `action_items` artifact.
        # Each type requires its own request. Generation requires transcript content and
        # configured inference and currently reads at most the first 10,000 segments, so
        # exceptionally long transcripts may produce incomplete artifacts or fail model
        # limits.
        sig do
          params(
            id: String,
            type: Telnyx::MeetingSessions::ArtifactCreateParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MeetingSessions::MeetingSessionArtifactResponse)
        end
        def create(
          # Unique identifier for the meeting session.
          id,
          # Type of artifact to generate from the session.
          type:,
          request_options: {}
        )
        end

        # Retrieves a single meeting session artifact by ID.
        sig do
          params(
            artifact_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MeetingSessions::MeetingSessionArtifactResponse)
        end
        def retrieve(
          # Unique identifier for a meeting session artifact.
          artifact_id,
          # Unique identifier for the meeting session.
          id:,
          request_options: {}
        )
        end

        # Returns a list of artifacts for a meeting session.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::MeetingSessions::ArtifactListResponse)
        end
        def list(
          # Unique identifier for the meeting session.
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
