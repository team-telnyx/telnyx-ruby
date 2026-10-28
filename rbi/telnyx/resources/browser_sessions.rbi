# typed: strong

module Telnyx
  module Resources
    class BrowserSessions
      # Execute browser actions: navigate, observe, click, fill, select, press, scroll,
      # wait_for, screenshot, batch.
      sig { returns(Telnyx::Resources::BrowserSessions::Actions) }
      attr_reader :actions

      # Creates an isolated browser session with network access restricted to the
      # domains you allow.
      sig do
        params(
          policy: Telnyx::BrowserSessionCreateParams::Policy::OrHash,
          idempotency_key: String,
          limits: Telnyx::BrowserSessionCreateParams::Limits::OrHash,
          metadata: T.anything,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BrowserSessionCreateResponse)
      end
      def create(
        policy:,
        # Scoped to the organization. The same key and identical normalized policy,
        # limits, and metadata replay the existing session (HTTP 201); a different request
        # returns 409 idempotency_conflict. Replays do not restart terminal sessions.
        idempotency_key: nil,
        limits: nil,
        # Arbitrary key-value metadata.
        metadata: nil,
        request_options: {}
      )
      end

      # Returns the current status of a browser session.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BrowserSessionRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      # Lists sessions for the authenticated org. Optional status filter.
      sig do
        params(
          status: Telnyx::BrowserSessionListParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BrowserSessionListResponse)
      end
      def list(status: nil, request_options: {})
      end

      # Closes a ready session and releases its resources. An already closed, failed, or
      # expired session is returned unchanged; a provisioning session returns 409
      # session_not_ready.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BrowserSessionDeleteResponse)
      end
      def delete(id, request_options: {})
      end

      # Returns artifact metadata and a signed download URL. The download URL requires
      # Bearer auth.
      sig do
        params(
          artifact_id: String,
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BrowserSessionRetrieveArtifactResponse)
      end
      def retrieve_artifact(artifact_id, id:, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
