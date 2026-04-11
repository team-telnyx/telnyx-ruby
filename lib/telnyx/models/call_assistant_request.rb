# frozen_string_literal: true

module Telnyx
  module Models
    class CallAssistantRequest < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   The identifier of the AI assistant to use.
      #
      #   @return [String]
      required :id, String

      # @!attribute dynamic_variables
      #   Map of dynamic variables and their default values. Dynamic variables can be
      #   referenced in instructions, greeting, and tool definitions using the
      #   `{{variable_name}}` syntax. Call-control-agent automatically merges in
      #   `telnyx_call_*` variables (telnyx_call_to, telnyx_call_from,
      #   telnyx_conversation_channel, telnyx_agent_target, telnyx_end_user_target,
      #   telnyx_call_caller_id_name) and custom header variables.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :dynamic_variables,
               -> { Telnyx::Internal::Type::HashOf[union: Telnyx::CallAssistantRequest::DynamicVariable] }

      # @!attribute external_llm
      #   External LLM configuration for bringing your own LLM endpoint.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :external_llm, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute fallback_config
      #   Fallback LLM configuration used when the primary LLM provider is unavailable.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :fallback_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute greeting
      #   Initial greeting text spoken when the assistant starts. Can be plain text for
      #   any voice or SSML for `AWS.Polly.<voice_id>` voices. There is a 3,000 character
      #   limit.
      #
      #   @return [String, nil]
      optional :greeting, String

      # @!attribute instructions
      #   System instructions for the voice assistant. Can be templated with
      #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
      #   This will overwrite the instructions set in the assistant configuration.
      #
      #   @return [String, nil]
      optional :instructions, String

      # @!attribute llm_api_key_ref
      #   Integration secret identifier for the LLM provider API key. Use this field to
      #   reference an
      #   [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      #   containing your LLM provider API key. Supports any LLM provider (OpenAI,
      #   Anthropic, etc.).
      #
      #   @return [String, nil]
      optional :llm_api_key_ref, String

      # @!attribute mcp_servers
      #   MCP (Model Context Protocol) server configurations for extending the assistant's
      #   capabilities with external tools and data sources.
      #
      #   @return [Array<Hash{Symbol=>Object}>, nil]
      optional :mcp_servers,
               Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

      # @!attribute model
      #   LLM model override for this call. If omitted, the assistant's configured model
      #   is used.
      #
      #   @return [String, nil]
      optional :model, String

      # @!attribute name
      #   Assistant name override for this call.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute observability_settings
      #   Observability configuration for the assistant session, including Langfuse
      #   integration for tracing and monitoring.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :observability_settings, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute openai_api_key_ref
      #   @deprecated This field is deprecated and will be removed soon
      #
      #   Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for
      #   the OpenAI API key. This field is maintained for backward compatibility;
      #   `llm_api_key_ref` is the canonical field name and supports all LLM providers.
      #
      #   @return [String, nil]
      optional :openai_api_key_ref, String

      # @!attribute tools
      #   Inline tool definitions available to the assistant (webhook, retrieval,
      #   transfer, hangup, etc.). Overrides the assistant's stored tools if provided.
      #
      #   @return [Array<Telnyx::Models::BookAppointmentTool, Telnyx::Models::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::CallControlRetrievalTool>, nil]
      optional :tools, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::CallAssistantRequest::Tool] }

      # @!method initialize(id:, dynamic_variables: nil, external_llm: nil, fallback_config: nil, greeting: nil, instructions: nil, llm_api_key_ref: nil, mcp_servers: nil, model: nil, name: nil, observability_settings: nil, openai_api_key_ref: nil, tools: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallAssistantRequest} for more details.
      #
      #   AI Assistant configuration. All fields except `id` are optional — the
      #   assistant's stored configuration will be used as fallback for any omitted
      #   fields.
      #
      #   @param id [String] The identifier of the AI assistant to use.
      #
      #   @param dynamic_variables [Hash{Symbol=>String, Float, Boolean}] Map of dynamic variables and their default values. Dynamic variables can be refe
      #
      #   @param external_llm [Hash{Symbol=>Object}] External LLM configuration for bringing your own LLM endpoint.
      #
      #   @param fallback_config [Hash{Symbol=>Object}] Fallback LLM configuration used when the primary LLM provider is unavailable.
      #
      #   @param greeting [String] Initial greeting text spoken when the assistant starts. Can be plain text for an
      #
      #   @param instructions [String] System instructions for the voice assistant. Can be templated with [dynamic vari
      #
      #   @param llm_api_key_ref [String] Integration secret identifier for the LLM provider API key. Use this field to re
      #
      #   @param mcp_servers [Array<Hash{Symbol=>Object}>] MCP (Model Context Protocol) server configurations for extending the assistant's
      #
      #   @param model [String] LLM model override for this call. If omitted, the assistant's configured model i
      #
      #   @param name [String] Assistant name override for this call.
      #
      #   @param observability_settings [Hash{Symbol=>Object}] Observability configuration for the assistant session, including Langfuse integr
      #
      #   @param openai_api_key_ref [String] Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for th
      #
      #   @param tools [Array<Telnyx::Models::BookAppointmentTool, Telnyx::Models::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::CallControlRetrievalTool>] Inline tool definitions available to the assistant (webhook, retrieval, transfer

      module DynamicVariable
        extend Telnyx::Internal::Type::Union

        variant String

        variant Float

        variant Telnyx::Internal::Type::Boolean

        # @!method self.variants
        #   @return [Array(String, Float, Boolean)]
      end

      module Tool
        extend Telnyx::Internal::Type::Union

        discriminator :type

        variant :book_appointment, -> { Telnyx::BookAppointmentTool }

        variant :check_availability, -> { Telnyx::CheckAvailabilityTool }

        variant :webhook, -> { Telnyx::AI::WebhookTool }

        variant :hangup, -> { Telnyx::AI::HangupTool }

        variant :transfer, -> { Telnyx::AI::TransferTool }

        variant :retrieval, -> { Telnyx::CallControlRetrievalTool }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::BookAppointmentTool, Telnyx::Models::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::CallControlRetrievalTool)]
      end
    end
  end
end
