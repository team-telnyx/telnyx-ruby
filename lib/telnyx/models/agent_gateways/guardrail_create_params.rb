# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Guardrails#create
      class GuardrailCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute modes
        #   When the guardrail runs. Each type runs in some modes only.
        #
        #   @return [Array<Symbol, Telnyx::Models::AgentGateways::GuardrailCreateParams::Mode>]
        required :modes,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AgentGateways::GuardrailCreateParams::Mode] }

        # @!attribute name
        #   A name, unique on the instance. A request names it in its `guardrails` field.
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #   The kind of check. It cannot change after create.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::GuardrailCreateParams::Type]
        required :type, enum: -> { Telnyx::AgentGateways::GuardrailCreateParams::Type }

        # @!attribute always_on
        #   `true` runs the guardrail on every request, and a request cannot turn it off.
        #   `false` runs it on the requests that name it.
        #
        #   @return [Boolean, nil]
        optional :always_on, Telnyx::Internal::Type::Boolean

        # @!attribute settings
        #   The type's settings. `content_filter`: `patterns` (prebuilt patterns by `name`,
        #   such as `us_ssn` or `email`), `regexes` (each a `name`, which tags masked
        #   matches, and a `pattern`), `keywords` (each a `keyword`), and `categories` (each
        #   a `name`), each entry with an `action` of `block` or `mask`. `tool_permission`:
        #   `rules` (`id`, `tool_name`, `tool_type`, `decision`, `argument_patterns`), a
        #   `default` decision, and `on_denied` (`block` or `rewrite`). `model_judge`: a
        #   `model` on the instance and weighted `criteria` (`name`, `description`,
        #   `weight`, the weights summing to 100). `custom_code`: `code` defining
        #   `apply_guardrail(inputs, request_data, input_type)`. `lakera`: `api_key`,
        #   `project_id`, `api_base`. `presidio`: `analyzer_url`, `anonymizer_url`,
        #   `entities` (entity name to `block` or `mask`), `language`. `bedrock`:
        #   `guardrail_id`, `version`, `region`, and `access_key_id` with
        #   `secret_access_key`, or `role_name`. `azure_content_safety`: `api_key`,
        #   `endpoint`, `severity` (0 to 7). Provider secrets are write-only.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :settings, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(instance_id:, modes:, name:, type:, always_on: nil, settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::GuardrailCreateParams} for more details.
        #
        #   @param instance_id [String]
        #
        #   @param modes [Array<Symbol, Telnyx::Models::AgentGateways::GuardrailCreateParams::Mode>] When the guardrail runs. Each type runs in some modes only.
        #
        #   @param name [String] A name, unique on the instance. A request names it in its `guardrails` field.
        #
        #   @param type [Symbol, Telnyx::Models::AgentGateways::GuardrailCreateParams::Type] The kind of check. It cannot change after create.
        #
        #   @param always_on [Boolean] `true` runs the guardrail on every request, and a request cannot turn it off. `f
        #
        #   @param settings [Hash{Symbol=>Object}] The type's settings. `content_filter`: `patterns` (prebuilt patterns by `name`,
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

        # The kind of check. It cannot change after create.
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
  end
end
