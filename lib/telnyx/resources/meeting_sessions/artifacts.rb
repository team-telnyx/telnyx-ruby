# frozen_string_literal: true

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
        #
        # @overload create(id, type:, request_options: {})
        #
        # @param id [String] Unique identifier for the meeting session.
        #
        # @param type [Symbol, Telnyx::Models::MeetingSessions::ArtifactCreateParams::Type] Type of artifact to generate from the session.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MeetingSessions::MeetingSessionArtifactResponse]
        #
        # @see Telnyx::Models::MeetingSessions::ArtifactCreateParams
        def create(id, params)
          parsed, options = Telnyx::MeetingSessions::ArtifactCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["meeting_sessions/%1$s/artifacts", id],
            body: parsed,
            model: Telnyx::MeetingSessions::MeetingSessionArtifactResponse,
            options: options
          )
        end

        # Retrieves a single meeting session artifact by ID.
        #
        # @overload retrieve(artifact_id, id:, request_options: {})
        #
        # @param artifact_id [String] Unique identifier for a meeting session artifact.
        #
        # @param id [String] Unique identifier for the meeting session.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MeetingSessions::MeetingSessionArtifactResponse]
        #
        # @see Telnyx::Models::MeetingSessions::ArtifactRetrieveParams
        def retrieve(artifact_id, params)
          parsed, options = Telnyx::MeetingSessions::ArtifactRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["meeting_sessions/%1$s/artifacts/%2$s", id, artifact_id],
            model: Telnyx::MeetingSessions::MeetingSessionArtifactResponse,
            options: options
          )
        end

        # Returns a list of artifacts for a meeting session.
        #
        # @overload list(id, request_options: {})
        #
        # @param id [String] Unique identifier for the meeting session.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MeetingSessions::ArtifactListResponse]
        #
        # @see Telnyx::Models::MeetingSessions::ArtifactListParams
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["meeting_sessions/%1$s/artifacts", id],
            model: Telnyx::Models::MeetingSessions::ArtifactListResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
