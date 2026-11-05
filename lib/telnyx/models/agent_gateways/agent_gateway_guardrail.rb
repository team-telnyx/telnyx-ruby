# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayGuardrail < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the guardrail.
        #
        #   @return [String]
        required :id, String

        # @!attribute always_on
        #   Whether it runs on every request.
        #
        #   @return [Boolean]
        required :always_on, Telnyx::Internal::Type::Boolean

        # @!attribute created_at
        #
        #   @return [Time, nil]
        required :created_at, Time, nil?: true

        # @!attribute modes
        #   When the guardrail runs.
        #
        #   @return [Array<Symbol, Telnyx::Models::AgentGateways::AgentGatewayGuardrail::Mode>]
        required :modes,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AgentGateways::AgentGatewayGuardrail::Mode] }

        # @!attribute name
        #   What a request names in its `guardrails` field.
        #
        #   @return [String]
        required :name, String

        # @!attribute settings
        #   The type's settings. `content_filter`: `patterns` (prebuilt patterns by name,
        #   such as `us_ssn` or `email`), `regexes`, `keywords`, and `categories` (such as
        #   `prompt_injection`), each with an `action` of `block` or `mask`.
        #   `tool_permission`: `rules` (`id`, `tool_name`, `tool_type`, `decision`,
        #   `argument_patterns`), a `default` decision, and `on_denied` (`block` or
        #   `rewrite`). `model_judge`: a `model` on the instance and weighted `criteria`
        #   (`name`, `description`, `weight`, the weights summing to 100). `custom_code`:
        #   `code` defining `apply_guardrail(inputs, request_data, input_type)`. `lakera`:
        #   `api_key`, `project_id`, `api_base`. `presidio`: `analyzer_url`,
        #   `anonymizer_url`, `entities` (entity name to `block` or `mask`), `language`.
        #   `bedrock`: `guardrail_id`, `version`, `region`, and `access_key_id` with
        #   `secret_access_key`, or `role_name`. `azure_content_safety`: `api_key`,
        #   `endpoint`, `severity` (0 to 7). Provider secrets are write-only. Responses
        #   leave the secrets out.
        #
        #   @return [Object]
        required :settings, Telnyx::Internal::Type::Unknown

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayGuardrail::Type]
        required :type, enum: -> { Telnyx::AgentGateways::AgentGatewayGuardrail::Type }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        required :updated_at, Time, nil?: true

        # @!method initialize(id:, always_on:, created_at:, modes:, name:, settings:, type:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayGuardrail} for more details.
        #
        #   @param id [String] Identifies the guardrail.
        #
        #   @param always_on [Boolean] Whether it runs on every request.
        #
        #   @param created_at [Time, nil]
        #
        #   @param modes [Array<Symbol, Telnyx::Models::AgentGateways::AgentGatewayGuardrail::Mode>] When the guardrail runs.
        #
        #   @param name [String] What a request names in its `guardrails` field.
        #
        #   @param settings [Object] The type's settings. `content_filter`: `patterns` (prebuilt patterns by name, su
        #
        #   @param type [Symbol, Telnyx::Models::AgentGateways::AgentGatewayGuardrail::Type]
        #
        #   @param updated_at [Time, nil]

        module Mode
          extend Telnyx::Internal::Type::Enum

          BEFORE_REQUEST = :before_request
          DURING_REQUEST = :during_request
          AFTER_REQUEST = :after_request
          LOGGING_ONLY = :logging_only
          BEFORE_TOOL_REQUEST = :before_tool_request
          DURING_TOOL_REQUEST = :during_tool_request
          AFTER_TOOL_REQUEST = :after_tool_request

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::AgentGateways::AgentGatewayGuardrail#type
        module Type
          extend Telnyx::Internal::Type::Enum

          CONTENT_FILTER = :content_filter
          TOOL_PERMISSION = :tool_permission
          MODEL_JUDGE = :model_judge
          CUSTOM_CODE = :custom_code
          LAKERA = :lakera
          PRESIDIO = :presidio
          BEDROCK = :bedrock
          AZURE_CONTENT_SAFETY = :azure_content_safety

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AgentGatewayGuardrail = AgentGateways::AgentGatewayGuardrail
  end
end
