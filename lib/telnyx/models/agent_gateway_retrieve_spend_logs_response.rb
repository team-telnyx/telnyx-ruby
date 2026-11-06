# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AgentGateways#retrieve_spend_logs
    class AgentGatewayRetrieveSpendLogsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta]
      required :meta, -> { Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data>]
      #   @param meta [Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   The request's ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute completion_tokens
        #   Output tokens, reasoning included.
        #
        #   @return [Integer]
        required :completion_tokens, Integer

        # @!attribute duration_ms
        #   How long the request took, in milliseconds.
        #
        #   @return [Integer, nil]
        required :duration_ms, Integer, nil?: true

        # @!attribute ended_at
        #   When the request ended.
        #
        #   @return [Time, nil]
        required :ended_at, Time, nil?: true

        # @!attribute key_id
        #   The key the request used.
        #
        #   @return [String, nil]
        required :key_id, String, nil?: true

        # @!attribute model
        #   The Telnyx Inference model that answered, such as `zai-org/GLM-5.3-Flash`. For
        #   an MCP tool request, `MCP: ` and the tool's name.
        #
        #   @return [String, nil]
        required :model, String, nil?: true

        # @!attribute operation
        #   The request type. `acompletion` is a chat completion, `aresponses` a response,
        #   `anthropic_messages` a message, `call_mcp_tool` an MCP tool request, and
        #   `list_mcp_tools` an MCP tool list.
        #
        #   @return [String]
        required :operation, String

        # @!attribute prompt_tokens
        #   Input tokens.
        #
        #   @return [Integer]
        required :prompt_tokens, Integer

        # @!attribute spend
        #   What the request cost, in USD, with its tokens at Telnyx Inference prices.
        #
        #   @return [Float]
        required :spend, Float

        # @!attribute started_at
        #   When the request started.
        #
        #   @return [Time]
        required :started_at, Time

        # @!attribute status
        #   `success` or `failure`.
        #
        #   @return [String, nil]
        required :status, String, nil?: true

        # @!attribute team_id
        #   The key's team.
        #
        #   @return [String, nil]
        required :team_id, String, nil?: true

        # @!attribute total_tokens
        #   Input and output tokens.
        #
        #   @return [Integer]
        required :total_tokens, Integer

        # @!method initialize(id:, completion_tokens:, duration_ms:, ended_at:, key_id:, model:, operation:, prompt_tokens:, spend:, started_at:, status:, team_id:, total_tokens:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data} for more details.
        #
        #   One request the instance served.
        #
        #   @param id [String] The request's ID.
        #
        #   @param completion_tokens [Integer] Output tokens, reasoning included.
        #
        #   @param duration_ms [Integer, nil] How long the request took, in milliseconds.
        #
        #   @param ended_at [Time, nil] When the request ended.
        #
        #   @param key_id [String, nil] The key the request used.
        #
        #   @param model [String, nil] The Telnyx Inference model that answered, such as `zai-org/GLM-5.3-Flash`. For a
        #
        #   @param operation [String] The request type. `acompletion` is a chat completion, `aresponses` a response, `
        #
        #   @param prompt_tokens [Integer] Input tokens.
        #
        #   @param spend [Float] What the request cost, in USD, with its tokens at Telnyx Inference prices.
        #
        #   @param started_at [Time] When the request started.
        #
        #   @param status [String, nil] `success` or `failure`.
        #
        #   @param team_id [String, nil] The key's team.
        #
        #   @param total_tokens [Integer] Input and output tokens.
      end

      # @see Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #   The page returned, counting from 1.
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #   Results per page.
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute total_pages
        #   Pages that can be requested; 0 when nothing matched.
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!attribute total_results
        #   Results across every page.
        #
        #   @return [Integer]
        required :total_results, Integer

        # @!attribute total_results_capped
        #   `true` when the window holds more than 10,000 rows. The two totals are then
        #   lower bounds: narrow the window, or page until a page comes back empty.
        #
        #   @return [Boolean]
        required :total_results_capped, Telnyx::Internal::Type::Boolean

        # @!method initialize(page_number:, page_size:, total_pages:, total_results:, total_results_capped:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta} for more details.
        #
        #   @param page_number [Integer] The page returned, counting from 1.
        #
        #   @param page_size [Integer] Results per page.
        #
        #   @param total_pages [Integer] Pages that can be requested; 0 when nothing matched.
        #
        #   @param total_results [Integer] Results across every page.
        #
        #   @param total_results_capped [Boolean] `true` when the window holds more than 10,000 rows. The two totals are then lowe
      end
    end
  end
end
