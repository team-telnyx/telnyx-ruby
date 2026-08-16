# frozen_string_literal: true

module Telnyx
  module Resources
    class WebSearch
      # Deep research with citations and async task polling.
      class Research
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::WebSearch::ResearchCreateParams} for more details.
        #
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
        #
        # @overload create(query:, background: nil, max_sources: nil, research_effort: nil, request_options: {})
        #
        # @param query [String] The research question or topic.
        #
        # @param background [Boolean] When `true`, the research runs asynchronously. The response returns a `task_id`
        #
        # @param max_sources [Integer] Maximum number of sources to use.
        #
        # @param research_effort [Symbol, Telnyx::Models::WebSearch::ResearchCreateParams::ResearchEffort] Research depth level. `lite` is fastest, `deep` is most thorough.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::WebSearch::ResearchCreateResponse]
        #
        # @see Telnyx::Models::WebSearch::ResearchCreateParams
        def create(params)
          parsed, options = Telnyx::WebSearch::ResearchCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "web_search/research",
            body: parsed,
            model: Telnyx::Models::WebSearch::ResearchCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::WebSearch::ResearchRetrieveParams} for more details.
        #
        # Polls the status of a previously started asynchronous research task. When the
        # status is `completed`, the response includes the answer and citations. When the
        # status is `failed`, the response includes an error message.
        #
        # @overload retrieve(task_id, request_options: {})
        #
        # @param task_id [String] The research task ID returned by `POST /web_search/research` with `background: t
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::WebSearch::ResearchRetrieveResponse]
        #
        # @see Telnyx::Models::WebSearch::ResearchRetrieveParams
        def retrieve(task_id, params = {})
          @client.request(
            method: :get,
            path: ["web_search/research/%1$s", task_id],
            model: Telnyx::Models::WebSearch::ResearchRetrieveResponse,
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
