# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Anthropic
        # @see Telnyx::Resources::AI::Anthropic::V1#messages
        class V1MessagesParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute max_tokens
          #   The maximum number of tokens to generate in the response.
          #
          #   @return [Integer]
          required :max_tokens, Integer

          # @!attribute messages
          #   The messages to send to the model, following the
          #   [Anthropic Messages API](https://docs.anthropic.com/en/api/messages) format.
          #
          #   @return [Array<Hash{Symbol=>Object}>]
          required :messages,
                   Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

          # @!attribute model
          #   The model to use for generating the response, for example `zai-org/GLM-5.2` or
          #   another model available from the Telnyx models endpoint.
          #
          #   @return [String]
          required :model, String

          # @!attribute api_key_ref
          #   If you are using an external inference provider, this field allows you to pass
          #   along a reference to your API key. After creating an
          #   [integration secret](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          #   for your API key, pass the secret's `identifier` in this field.
          #
          #   @return [String, nil]
          optional :api_key_ref, String

          # @!attribute billing_group_id
          #   The billing group ID to associate with this request.
          #
          #   @return [String, nil]
          optional :billing_group_id, String

          # @!attribute fallback_config
          #   Configuration for model fallback behavior when the primary model is unavailable.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :fallback_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute max_retries
          #   Maximum number of retries for the request.
          #
          #   @return [Integer, nil]
          optional :max_retries, Integer

          # @!attribute mcp_servers
          #   List of MCP (Model Context Protocol) servers to make available to the model.
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :mcp_servers,
                   Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

          # @!attribute metadata
          #   An object describing metadata about the request.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute service_tier
          #   Service tier for the request.
          #
          #   @return [String, nil]
          optional :service_tier, String

          # @!attribute stop_sequences
          #   Custom sequences that will cause the model to stop generating.
          #
          #   @return [Array<String>, nil]
          optional :stop_sequences, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute stream
          #   Whether to stream the response as Anthropic-format Server-Sent Events.
          #
          #   @return [Boolean, nil]
          optional :stream, Telnyx::Internal::Type::Boolean

          # @!attribute system_
          #   System prompt. Can be a string or an array of content blocks following the
          #   Anthropic API format.
          #
          #   @return [String, Array<Hash{Symbol=>Object}>, nil]
          optional :system_, union: -> { Telnyx::AI::Anthropic::V1MessagesParams::System }, api_name: :system

          # @!attribute temperature
          #   Amount of randomness injected into the response. Ranges from 0 to 1.
          #
          #   @return [Float, nil]
          optional :temperature, Float

          # @!attribute thinking
          #   Extended thinking configuration for models that support it. Set `type` to
          #   `enabled` to turn on extended thinking.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :thinking, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute timeout
          #   Request timeout in seconds.
          #
          #   @return [Float, nil]
          optional :timeout, Float

          # @!attribute tool_choice
          #   Controls how the model uses tools, following the Anthropic API format.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :tool_choice, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute tools
          #   Definitions of tools that the model may use, following the Anthropic API format.
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :tools,
                   Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

          # @!attribute top_k
          #   Top-k sampling parameter. Only sample from the top K options for each subsequent
          #   token.
          #
          #   @return [Integer, nil]
          optional :top_k, Integer

          # @!attribute top_p
          #   Nucleus sampling parameter. Use temperature or top_p, but not both.
          #
          #   @return [Float, nil]
          optional :top_p, Float

          # @!method initialize(max_tokens:, messages:, model:, api_key_ref: nil, billing_group_id: nil, fallback_config: nil, max_retries: nil, mcp_servers: nil, metadata: nil, service_tier: nil, stop_sequences: nil, stream: nil, system_: nil, temperature: nil, thinking: nil, timeout: nil, tool_choice: nil, tools: nil, top_k: nil, top_p: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Anthropic::V1MessagesParams} for more details.
          #
          #   @param max_tokens [Integer] The maximum number of tokens to generate in the response.
          #
          #   @param messages [Array<Hash{Symbol=>Object}>] The messages to send to the model, following the [Anthropic Messages API](https:
          #
          #   @param model [String] The model to use for generating the response, for example `zai-org/GLM-5.2` or a
          #
          #   @param api_key_ref [String] If you are using an external inference provider, this field allows you to pass a
          #
          #   @param billing_group_id [String] The billing group ID to associate with this request.
          #
          #   @param fallback_config [Hash{Symbol=>Object}] Configuration for model fallback behavior when the primary model is unavailable.
          #
          #   @param max_retries [Integer] Maximum number of retries for the request.
          #
          #   @param mcp_servers [Array<Hash{Symbol=>Object}>] List of MCP (Model Context Protocol) servers to make available to the model.
          #
          #   @param metadata [Hash{Symbol=>Object}] An object describing metadata about the request.
          #
          #   @param service_tier [String] Service tier for the request.
          #
          #   @param stop_sequences [Array<String>] Custom sequences that will cause the model to stop generating.
          #
          #   @param stream [Boolean] Whether to stream the response as Anthropic-format Server-Sent Events.
          #
          #   @param system_ [String, Array<Hash{Symbol=>Object}>] System prompt. Can be a string or an array of content blocks following the Anthr
          #
          #   @param temperature [Float] Amount of randomness injected into the response. Ranges from 0 to 1.
          #
          #   @param thinking [Hash{Symbol=>Object}] Extended thinking configuration for models that support it. Set `type` to `enabl
          #
          #   @param timeout [Float] Request timeout in seconds.
          #
          #   @param tool_choice [Hash{Symbol=>Object}] Controls how the model uses tools, following the Anthropic API format.
          #
          #   @param tools [Array<Hash{Symbol=>Object}>] Definitions of tools that the model may use, following the Anthropic API format.
          #
          #   @param top_k [Integer] Top-k sampling parameter. Only sample from the top K options for each subsequent
          #
          #   @param top_p [Float] Nucleus sampling parameter. Use temperature or top_p, but not both.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # System prompt. Can be a string or an array of content blocks following the
          # Anthropic API format.
          module System
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::Anthropic::V1MessagesParams::System::UnionMember1Array }

            # @!method self.variants
            #   @return [Array(String, Array<Hash{Symbol=>Object}>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember1Array =
              Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]
          end
        end
      end
    end
  end
end
