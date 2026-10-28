# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      # @see Telnyx::Resources::BrowserSessions::Actions#create
      class ActionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute body
        #   Discriminated union on type. Variants are strict: unknown fields are rejected
        #   with 400. Reusing an idempotency_key with an identical request replays the
        #   original resource; with a different request it returns 409 idempotency_conflict.
        #
        #   @return [Telnyx::Models::BrowserSessions::NavigateAction, Telnyx::Models::BrowserSessions::ObserveAction, Telnyx::Models::BrowserSessions::ClickAction, Telnyx::Models::BrowserSessions::FillAction, Telnyx::Models::BrowserSessions::SelectAction, Telnyx::Models::BrowserSessions::PressAction, Telnyx::Models::BrowserSessions::ScrollAction, Telnyx::Models::BrowserSessions::ScreenshotAction, Telnyx::Models::BrowserSessions::WaitForAction, Telnyx::Models::BrowserSessions::ActionCreateParams::Body::BatchAction]
        required :body, union: -> { Telnyx::BrowserSessions::ActionCreateParams::Body }

        # @!attribute wait_seconds
        #   Maximum seconds the submission request waits for completion, not an execution
        #   timeout. If still queued or running, returns 202 without cancelling execution;
        #   poll the returned action ID.
        #
        #   @return [Integer, nil]
        optional :wait_seconds, Integer

        # @!method initialize(id:, body:, wait_seconds: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BrowserSessions::ActionCreateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param body [Telnyx::Models::BrowserSessions::NavigateAction, Telnyx::Models::BrowserSessions::ObserveAction, Telnyx::Models::BrowserSessions::ClickAction, Telnyx::Models::BrowserSessions::FillAction, Telnyx::Models::BrowserSessions::SelectAction, Telnyx::Models::BrowserSessions::PressAction, Telnyx::Models::BrowserSessions::ScrollAction, Telnyx::Models::BrowserSessions::ScreenshotAction, Telnyx::Models::BrowserSessions::WaitForAction, Telnyx::Models::BrowserSessions::ActionCreateParams::Body::BatchAction] Discriminated union on type. Variants are strict: unknown fields are rejected wi
        #
        #   @param wait_seconds [Integer] Maximum seconds the submission request waits for completion, not an execution ti
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Discriminated union on type. Variants are strict: unknown fields are rejected
        # with 400. Reusing an idempotency_key with an identical request replays the
        # original resource; with a different request it returns 409 idempotency_conflict.
        module Body
          extend Telnyx::Internal::Type::Union

          # Navigate to a URL.
          variant -> { Telnyx::BrowserSessions::NavigateAction }

          # Capture an observation (DOM snapshot) of the current page.
          variant -> { Telnyx::BrowserSessions::ObserveAction }

          # Click an element identified by observation_id + ref.
          variant -> { Telnyx::BrowserSessions::ClickAction }

          # Type text into the element identified by observation_id + ref.
          variant -> { Telnyx::BrowserSessions::FillAction }

          # Select an option on the element identified by observation_id + ref.
          variant -> { Telnyx::BrowserSessions::SelectAction }

          # Press a keyboard key.
          variant -> { Telnyx::BrowserSessions::PressAction }

          # Scroll the page.
          variant -> { Telnyx::BrowserSessions::ScrollAction }

          # Capture a screenshot of the current page.
          variant -> { Telnyx::BrowserSessions::ScreenshotAction }

          # Wait for a condition before continuing.
          variant -> { Telnyx::BrowserSessions::WaitForAction }

          # Execute 1-50 sub-actions sequentially. Non-recursive: a batch inside a batch is rejected (400). An empty array is rejected (400). A failed sub-action stops the batch; earlier browser mutations are not rolled back, but partial sub-action results are not returned.
          variant -> { Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction }

          class BatchAction < Telnyx::Internal::Type::BaseModel
            # @!attribute actions
            #
            #   @return [Array<Telnyx::Models::BrowserSessions::NavigateAction, Telnyx::Models::BrowserSessions::ObserveAction, Telnyx::Models::BrowserSessions::ClickAction, Telnyx::Models::BrowserSessions::FillAction, Telnyx::Models::BrowserSessions::SelectAction, Telnyx::Models::BrowserSessions::PressAction, Telnyx::Models::BrowserSessions::ScrollAction, Telnyx::Models::BrowserSessions::ScreenshotAction, Telnyx::Models::BrowserSessions::WaitForAction>]
            required :actions,
                     -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction::Action] }

            # @!attribute type
            #
            #   @return [Symbol, :batch]
            required :type, const: :batch

            # @!attribute idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String

            # @!attribute include_observation
            #
            #   @return [Boolean, nil]
            optional :include_observation, Telnyx::Internal::Type::Boolean

            # @!method initialize(actions:, idempotency_key: nil, include_observation: nil, type: :batch)
            #   Execute 1-50 sub-actions sequentially. Non-recursive: a batch inside a batch is
            #   rejected (400). An empty array is rejected (400). A failed sub-action stops the
            #   batch; earlier browser mutations are not rolled back, but partial sub-action
            #   results are not returned.
            #
            #   @param actions [Array<Telnyx::Models::BrowserSessions::NavigateAction, Telnyx::Models::BrowserSessions::ObserveAction, Telnyx::Models::BrowserSessions::ClickAction, Telnyx::Models::BrowserSessions::FillAction, Telnyx::Models::BrowserSessions::SelectAction, Telnyx::Models::BrowserSessions::PressAction, Telnyx::Models::BrowserSessions::ScrollAction, Telnyx::Models::BrowserSessions::ScreenshotAction, Telnyx::Models::BrowserSessions::WaitForAction>]
            #   @param idempotency_key [String]
            #   @param include_observation [Boolean]
            #   @param type [Symbol, :batch]

            # Navigate to a URL.
            module Action
              extend Telnyx::Internal::Type::Union

              # Navigate to a URL.
              variant -> { Telnyx::BrowserSessions::NavigateAction }

              # Capture an observation (DOM snapshot) of the current page.
              variant -> { Telnyx::BrowserSessions::ObserveAction }

              # Click an element identified by observation_id + ref.
              variant -> { Telnyx::BrowserSessions::ClickAction }

              # Type text into the element identified by observation_id + ref.
              variant -> { Telnyx::BrowserSessions::FillAction }

              # Select an option on the element identified by observation_id + ref.
              variant -> { Telnyx::BrowserSessions::SelectAction }

              # Press a keyboard key.
              variant -> { Telnyx::BrowserSessions::PressAction }

              # Scroll the page.
              variant -> { Telnyx::BrowserSessions::ScrollAction }

              # Capture a screenshot of the current page.
              variant -> { Telnyx::BrowserSessions::ScreenshotAction }

              # Wait for a condition before continuing.
              variant -> { Telnyx::BrowserSessions::WaitForAction }

              # @!method self.variants
              #   @return [Array(Telnyx::Models::BrowserSessions::NavigateAction, Telnyx::Models::BrowserSessions::ObserveAction, Telnyx::Models::BrowserSessions::ClickAction, Telnyx::Models::BrowserSessions::FillAction, Telnyx::Models::BrowserSessions::SelectAction, Telnyx::Models::BrowserSessions::PressAction, Telnyx::Models::BrowserSessions::ScrollAction, Telnyx::Models::BrowserSessions::ScreenshotAction, Telnyx::Models::BrowserSessions::WaitForAction)]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::BrowserSessions::NavigateAction, Telnyx::Models::BrowserSessions::ObserveAction, Telnyx::Models::BrowserSessions::ClickAction, Telnyx::Models::BrowserSessions::FillAction, Telnyx::Models::BrowserSessions::SelectAction, Telnyx::Models::BrowserSessions::PressAction, Telnyx::Models::BrowserSessions::ScrollAction, Telnyx::Models::BrowserSessions::ScreenshotAction, Telnyx::Models::BrowserSessions::WaitForAction, Telnyx::Models::BrowserSessions::ActionCreateParams::Body::BatchAction)]
        end
      end
    end
  end
end
