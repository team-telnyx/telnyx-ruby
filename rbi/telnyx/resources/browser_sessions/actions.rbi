# typed: strong

module Telnyx
  module Resources
    class BrowserSessions
      # Execute browser actions: navigate, observe, click, fill, select, press, scroll,
      # wait_for, screenshot, batch.
      class Actions
        # Executes a browser action on the session. Returns 200 if completed within
        # wait_seconds, 202 if still in-flight.
        #
        # Action types: navigate, observe, click, fill, select, press, scroll, wait_for,
        # screenshot, batch.
        sig do
          params(
            id: String,
            body:
              T.any(
                Telnyx::BrowserSessions::NavigateAction::OrHash,
                Telnyx::BrowserSessions::ObserveAction::OrHash,
                Telnyx::BrowserSessions::ClickAction::OrHash,
                Telnyx::BrowserSessions::FillAction::OrHash,
                Telnyx::BrowserSessions::SelectAction::OrHash,
                Telnyx::BrowserSessions::PressAction::OrHash,
                Telnyx::BrowserSessions::ScrollAction::OrHash,
                Telnyx::BrowserSessions::ScreenshotAction::OrHash,
                Telnyx::BrowserSessions::WaitForAction::OrHash,
                Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction::OrHash
              ),
            wait_seconds: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::BrowserSessions::ActionCreateResponse)
        end
        def create(
          # Path param
          id,
          # Body param: Discriminated union on type. Variants are strict: unknown fields are
          # rejected with 400. Reusing an idempotency_key with an identical request replays
          # the original resource; with a different request it returns 409
          # idempotency_conflict.
          body:,
          # Query param: Maximum seconds the submission request waits for completion, not an
          # execution timeout. If still queued or running, returns 202 without cancelling
          # execution; poll the returned action ID.
          wait_seconds: nil,
          request_options: {}
        )
        end

        # Returns the stored status and result of an action. Use this to poll actions that
        # returned 202; HTTP 200 can contain any action status. Stored observations
        # contain metadata with empty tree and refs, not the full snapshot; submit a fresh
        # observe action to obtain current refs.
        sig do
          params(
            action_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::BrowserSessions::ActionRetrieveResponse)
        end
        def retrieve(action_id, id:, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
