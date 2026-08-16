# typed: strong

module Telnyx
  module Resources
    class WebSearch
      # Deep research with citations and async task polling.
      class Research
        # Starts a deep research task that runs multiple searches, reads sources, and
        # synthesizes an answer with citations.
        #
        # ## Synchronous mode (default)
        #
        # When `background` is `false` or omitted, the request blocks until the research
        # completes and returns the answer with citations. This can take up to 120 seconds
        # depending on `research_effort`.
        #
        # ## Asynchronous mode
        #
        # When `background` is `true`, the request returns immediately with a `task_id`
        # and `status: pending`. Poll `GET /web_search/research/{task_id}` to check when
        # the research completes and retrieve the answer.
        sig do
          params(
            query: String,
            background: T::Boolean,
            max_sources: Integer,
            research_effort:
              Telnyx::WebSearch::ResearchCreateParams::ResearchEffort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::WebSearch::ResearchCreateResponse)
        end
        def create(
          # The research question or topic.
          query:,
          # When `true`, the research runs asynchronously. The response returns a `task_id`
          # immediately instead of waiting for the result. Poll
          # `GET /web_search/research/{task_id}` to check status.
          background: nil,
          # Maximum number of sources to use.
          max_sources: nil,
          # Research depth level. `lite` is fastest, `deep` is most thorough.
          research_effort: nil,
          request_options: {}
        )
        end

        # Polls the status of a previously started asynchronous research task. When the
        # status is `completed`, the response includes the answer and citations. When the
        # status is `failed`, the response includes an error message.
        sig do
          params(
            task_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::WebSearch::ResearchRetrieveResponse)
        end
        def retrieve(
          # The research task ID returned by `POST /web_search/research` with
          # `background: true`.
          task_id,
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
