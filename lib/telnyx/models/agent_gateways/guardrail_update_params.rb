# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Guardrails#update
      class GuardrailUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute guardrail_id
        #
        #   @return [String]
        required :guardrail_id, String

        # @!attribute always_on
        #   `true` runs the guardrail on every request, and a request cannot turn it off.
        #   `false` runs it on the requests that name it.
        #
        #   @return [Boolean, nil]
        optional :always_on, Telnyx::Internal::Type::Boolean

        # @!attribute modes
        #   When the guardrail runs. Each type runs in some modes only.
        #
        #   @return [Array<Symbol, Telnyx::Models::AgentGateways::GuardrailUpdateParams::Mode>, nil]
        optional :modes,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AgentGateways::GuardrailUpdateParams::Mode] }

        # @!attribute name
        #   A name, unique on the instance. A request names it in its `guardrails` field.
        #
        #   @return [String, nil]
        optional :name, String

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
        #   `endpoint`, `severity` (0 to 7). Provider secrets are write-only.
        #
        #   @return [Object, nil]
        optional :settings, Telnyx::Internal::Type::Unknown

        # @!method initialize(instance_id:, guardrail_id:, always_on: nil, modes: nil, name: nil, settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::GuardrailUpdateParams} for more details.
        #
        #   @param instance_id [String]
        #
        #   @param guardrail_id [String]
        #
        #   @param always_on [Boolean] `true` runs the guardrail on every request, and a request cannot turn it off. `f
        #
        #   @param modes [Array<Symbol, Telnyx::Models::AgentGateways::GuardrailUpdateParams::Mode>] When the guardrail runs. Each type runs in some modes only.
        #
        #   @param name [String] A name, unique on the instance. A request names it in its `guardrails` field.
        #
        #   @param settings [Object] The type's settings. `content_filter`: `patterns` (prebuilt patterns by name, su
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
      end
    end
  end
end
