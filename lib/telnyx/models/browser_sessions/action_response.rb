# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      class ActionResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute completed_at
        #
        #   @return [Time, nil]
        required :completed_at, Time, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute error
        #   Null unless an execution failure is recorded. Action failures (policy_denied,
        #   stale_observation, stale_ref, navigation_blocked, timeout, execution_lost,
        #   result_too_large) are returned on the action resource with HTTP 200. An unknown
        #   action with execution_lost has retryable=false; inspect session state and
        #   reconcile possible effects before any new action. Separately, a request may
        #   return HTTP 503 with a top-level execution_lost error and retryable=true; that
        #   is not proof of safe re-execution.
        #
        #   @return [Telnyx::Models::BrowserSessions::ActionResponse::Error, nil]
        required :error, -> { Telnyx::BrowserSessions::ActionResponse::Error }, nil?: true

        # @!attribute request
        #   Normalized request metadata; defaults may be materialized and fill values are
        #   redacted as {redacted: true, length: number}, including inside batch actions.
        #
        #   @return [Hash{Symbol=>Object}]
        required :request, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute result
        #
        #   @return [Telnyx::Models::BrowserSessions::ActionResponse::Result, nil]
        required :result, -> { Telnyx::BrowserSessions::ActionResponse::Result }, nil?: true

        # @!attribute seq
        #
        #   @return [Integer]
        required :seq, Integer

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String

        # @!attribute started_at
        #
        #   @return [Time, nil]
        required :started_at, Time, nil?: true

        # @!attribute status
        #   POST returns 202 for queued or running actions. Terminal states are succeeded,
        #   failed, and unknown (the execution outcome could not be determined, with
        #   error.code=execution_lost). GET returns 200 for both nonterminal and terminal
        #   states.
        #
        #   @return [Symbol, Telnyx::Models::BrowserSessions::ActionResponse::Status]
        required :status, enum: -> { Telnyx::BrowserSessions::ActionResponse::Status }

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!method initialize(id:, completed_at:, created_at:, error:, request:, result:, seq:, session_id:, started_at:, status:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BrowserSessions::ActionResponse} for more details.
        #
        #   @param id [String]
        #
        #   @param completed_at [Time, nil]
        #
        #   @param created_at [Time]
        #
        #   @param error [Telnyx::Models::BrowserSessions::ActionResponse::Error, nil] Null unless an execution failure is recorded. Action failures (policy_denied, st
        #
        #   @param request [Hash{Symbol=>Object}] Normalized request metadata; defaults may be materialized and fill values are re
        #
        #   @param result [Telnyx::Models::BrowserSessions::ActionResponse::Result, nil]
        #
        #   @param seq [Integer]
        #
        #   @param session_id [String]
        #
        #   @param started_at [Time, nil]
        #
        #   @param status [Symbol, Telnyx::Models::BrowserSessions::ActionResponse::Status] POST returns 202 for queued or running actions. Terminal states are succeeded, f
        #
        #   @param type [String]

        # @see Telnyx::Models::BrowserSessions::ActionResponse#error
        class Error < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String]
          required :code, String

          # @!attribute retryable
          #
          #   @return [Boolean]
          required :retryable, Telnyx::Internal::Type::Boolean

          # @!method initialize(code:, retryable:)
          #   Null unless an execution failure is recorded. Action failures (policy_denied,
          #   stale_observation, stale_ref, navigation_blocked, timeout, execution_lost,
          #   result_too_large) are returned on the action resource with HTTP 200. An unknown
          #   action with execution_lost has retryable=false; inspect session state and
          #   reconcile possible effects before any new action. Separately, a request may
          #   return HTTP 503 with a top-level execution_lost error and retryable=true; that
          #   is not proof of safe re-execution.
          #
          #   @param code [String]
          #   @param retryable [Boolean]
        end

        # @see Telnyx::Models::BrowserSessions::ActionResponse#result
        class Result < Telnyx::Internal::Type::BaseModel
          # @!attribute artifact
          #
          #   @return [Telnyx::Models::BrowserSessions::ActionResponse::Result::Artifact, nil]
          optional :artifact, -> { Telnyx::BrowserSessions::ActionResponse::Result::Artifact }

          # @!attribute observation
          #   Full tree and refs are delivered only in the original successful POST response
          #   when completed within wait_seconds. GET polling and idempotent replays return
          #   metadata with an empty tree and refs plus ref_count. Submit a fresh observe
          #   action to obtain usable refs.
          #
          #   @return [Telnyx::Models::BrowserSessions::ActionResponse::Result::Observation, nil]
          optional :observation, -> { Telnyx::BrowserSessions::ActionResponse::Result::Observation }

          # @!attribute results
          #   Present only for batch actions.
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :results,
                   Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

          # @!attribute title
          #
          #   @return [String, nil]
          optional :title, String

          # @!attribute url
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(artifact: nil, observation: nil, results: nil, title: nil, url: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::BrowserSessions::ActionResponse::Result} for more details.
          #
          #   @param artifact [Telnyx::Models::BrowserSessions::ActionResponse::Result::Artifact]
          #
          #   @param observation [Telnyx::Models::BrowserSessions::ActionResponse::Result::Observation] Full tree and refs are delivered only in the original successful POST response w
          #
          #   @param results [Array<Hash{Symbol=>Object}>] Present only for batch actions.
          #
          #   @param title [String]
          #
          #   @param url [String]

          # @see Telnyx::Models::BrowserSessions::ActionResponse::Result#artifact
          class Artifact < Telnyx::Internal::Type::BaseModel
            # @!attribute artifact_id
            #
            #   @return [String, nil]
            optional :artifact_id, String

            # @!attribute content_type
            #
            #   @return [String, nil]
            optional :content_type, String

            # @!attribute size_bytes
            #
            #   @return [Integer, nil]
            optional :size_bytes, Integer

            # @!method initialize(artifact_id: nil, content_type: nil, size_bytes: nil)
            #   @param artifact_id [String]
            #   @param content_type [String]
            #   @param size_bytes [Integer]
          end

          # @see Telnyx::Models::BrowserSessions::ActionResponse::Result#observation
          class Observation < Telnyx::Internal::Type::BaseModel
            # @!attribute observation_id
            #
            #   @return [String, nil]
            optional :observation_id, String

            # @!attribute ref_count
            #   Number of refs in the original observation, present on stored observation
            #   metadata.
            #
            #   @return [Integer, nil]
            optional :ref_count, Integer

            # @!attribute refs
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :refs, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute title
            #
            #   @return [String, nil]
            optional :title, String

            # @!attribute tree
            #
            #   @return [String, nil]
            optional :tree, String

            # @!attribute truncated
            #
            #   @return [Boolean, nil]
            optional :truncated, Telnyx::Internal::Type::Boolean

            # @!attribute url
            #
            #   @return [String, nil]
            optional :url, String

            # @!method initialize(observation_id: nil, ref_count: nil, refs: nil, title: nil, tree: nil, truncated: nil, url: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::BrowserSessions::ActionResponse::Result::Observation} for more
            #   details.
            #
            #   Full tree and refs are delivered only in the original successful POST response
            #   when completed within wait_seconds. GET polling and idempotent replays return
            #   metadata with an empty tree and refs plus ref_count. Submit a fresh observe
            #   action to obtain usable refs.
            #
            #   @param observation_id [String]
            #
            #   @param ref_count [Integer] Number of refs in the original observation, present on stored observation metada
            #
            #   @param refs [Hash{Symbol=>Object}]
            #
            #   @param title [String]
            #
            #   @param tree [String]
            #
            #   @param truncated [Boolean]
            #
            #   @param url [String]
          end
        end

        # POST returns 202 for queued or running actions. Terminal states are succeeded,
        # failed, and unknown (the execution outcome could not be determined, with
        # error.code=execution_lost). GET returns 200 for both nonterminal and terminal
        # states.
        #
        # @see Telnyx::Models::BrowserSessions::ActionResponse#status
        module Status
          extend Telnyx::Internal::Type::Enum

          QUEUED = :queued
          RUNNING = :running
          SUCCEEDED = :succeeded
          FAILED = :failed
          UNKNOWN = :unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
