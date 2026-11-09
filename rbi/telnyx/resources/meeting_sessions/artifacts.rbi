# typed: strong

module Telnyx
  module Resources
    class MeetingSessions
      # Create and retrieve asynchronous summaries and action-item artifacts.
      class Artifacts
        # Requests asynchronous generation of one artifact: `summary`, `action_items`,
        # `decisions`, `topics`, `open_questions`, or `custom`. Each request produces one
        # artifact. `custom` is answered from a `prompt` you supply, which is required for
        # `custom` and rejected on the five named types. Generation requires transcript
        # content. Input is limited to 10,000 segments and 1,000,000 UTF-8 bytes including
        # segment text, speaker labels, timestamps, and sequence numbers. An oversized
        # transcript returns 409 invalid_state before an artifact is created; it is not
        # silently truncated. Model context limits can still cause an accepted artifact to
        # fail. **Not idempotent, and every call is billed**: each request is a separate
        # inference run, so a retry or a duplicate POST produces a second artifact and a
        # second charge. Guard the call rather than relying on the service to collapse it.
        # The automatic `summarize_on_end` attempt is billed on the same basis.
        sig do
          params(
            id: String,
            body:
              T.any(
                Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::OrHash,
                Telnyx::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MeetingSessions::MeetingSessionArtifactResponse)
        end
        def create(
          # Unique identifier for the meeting session.
          id,
          # One of two shapes: a named type on its own, or `custom` with the prompt it
          # answers.
          body:,
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
