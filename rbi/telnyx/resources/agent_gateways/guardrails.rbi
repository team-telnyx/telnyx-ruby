# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      # Checks an instance runs on model and tool requests.
      class Guardrails
        # Adds a check the instance runs on model and tool requests. It runs on every
        # request when `always_on`, and otherwise on the requests that name it in
        # `guardrails`. The instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            instance_id: String,
            modes:
              T::Array[
                Telnyx::AgentGateways::GuardrailCreateParams::Mode::OrSymbol
              ],
            name: String,
            type: Telnyx::AgentGateways::GuardrailCreateParams::Type::OrSymbol,
            always_on: T::Boolean,
            settings: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayGuardrailResponse)
        end
        def create(
          # The Agent Gateway's `id`.
          instance_id,
          # When the guardrail runs. Each type runs in some modes only.
          modes:,
          # A name, unique on the instance. A request names it in its `guardrails` field.
          name:,
          # The kind of check. It cannot change after create.
          type:,
          # `true` runs the guardrail on every request, and a request cannot turn it off.
          # `false` runs it on the requests that name it.
          always_on: nil,
          # The type's settings. `content_filter`: `patterns` (prebuilt patterns by `name`,
          # such as `us_ssn` or `email`), `regexes` (each a `name`, which tags masked
          # matches, and a `pattern`), `keywords` (each a `keyword`), and `categories` (each
          # a `name`), each entry with an `action` of `block` or `mask`. `tool_permission`:
          # `rules` (`id`, `tool_name`, `tool_type`, `decision`, `argument_patterns`), a
          # `default` decision, and `on_denied` (`block` or `rewrite`). `model_judge`: a
          # `model` on the instance and weighted `criteria` (`name`, `description`,
          # `weight`, the weights summing to 100). `custom_code`: `code` defining
          # `apply_guardrail(inputs, request_data, input_type)`. `lakera`: `api_key`,
          # `project_id`, `api_base`. `presidio`: `analyzer_url`, `anonymizer_url`,
          # `entities` (entity name to `block` or `mask`), `language`. `bedrock`:
          # `guardrail_id`, `version`, `region`, and `access_key_id` with
          # `secret_access_key`, or `role_name`. `azure_content_safety`: `api_key`,
          # `endpoint`, `severity` (0 to 7). Provider secrets are write-only.
          settings: nil,
          request_options: {}
        )
        end

        # Changes a guardrail's `name`, `modes`, `always_on`, or `settings`. `settings` is
        # replaced whole, secrets included. The `type` cannot change. The instance must be
        # `ready`; otherwise the request answers `409`.
        sig do
          params(
            guardrail_id: String,
            instance_id: String,
            always_on: T::Boolean,
            modes:
              T::Array[
                Telnyx::AgentGateways::GuardrailUpdateParams::Mode::OrSymbol
              ],
            name: String,
            settings: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayGuardrailResponse)
        end
        def update(
          # Path param: The guardrail's `id`.
          guardrail_id,
          # Path param: The Agent Gateway's `id`.
          instance_id:,
          # Body param: `true` runs the guardrail on every request, and a request cannot
          # turn it off. `false` runs it on the requests that name it.
          always_on: nil,
          # Body param: When the guardrail runs. Each type runs in some modes only.
          modes: nil,
          # Body param: A name, unique on the instance. A request names it in its
          # `guardrails` field.
          name: nil,
          # Body param: The type's settings. `content_filter`: `patterns` (prebuilt patterns
          # by name, such as `us_ssn` or `email`), `regexes`, `keywords`, and `categories`
          # (such as `prompt_injection`), each with an `action` of `block` or `mask`.
          # `tool_permission`: `rules` (`id`, `tool_name`, `tool_type`, `decision`,
          # `argument_patterns`), a `default` decision, and `on_denied` (`block` or
          # `rewrite`). `model_judge`: a `model` on the instance and weighted `criteria`
          # (`name`, `description`, `weight`, the weights summing to 100). `custom_code`:
          # `code` defining `apply_guardrail(inputs, request_data, input_type)`. `lakera`:
          # `api_key`, `project_id`, `api_base`. `presidio`: `analyzer_url`,
          # `anonymizer_url`, `entities` (entity name to `block` or `mask`), `language`.
          # `bedrock`: `guardrail_id`, `version`, `region`, and `access_key_id` with
          # `secret_access_key`, or `role_name`. `azure_content_safety`: `api_key`,
          # `endpoint`, `severity` (0 to 7). Provider secrets are write-only.
          settings: nil,
          request_options: {}
        )
        end

        # Lists the instance's guardrails, without their secrets. The instance must be
        # `ready`; otherwise the request answers `409`.
        sig do
          params(
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AgentGateways::GuardrailListResponse)
        end
        def list(
          # The Agent Gateway's `id`.
          instance_id,
          request_options: {}
        )
        end

        # Removes a guardrail and returns it as it was. The instance must be `ready`;
        # otherwise the request answers `409`.
        sig do
          params(
            guardrail_id: String,
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayGuardrailResponse)
        end
        def delete(
          # The guardrail's `id`.
          guardrail_id,
          # The Agent Gateway's `id`.
          instance_id:,
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
