# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class GuardrailUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::GuardrailUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        sig { returns(String) }
        attr_accessor :guardrail_id

        # `true` runs the guardrail on every request, and a request cannot turn it off.
        # `false` runs it on the requests that name it.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :always_on

        sig { params(always_on: T::Boolean).void }
        attr_writer :always_on

        # When the guardrail runs. Each type runs in some modes only.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::AgentGateways::GuardrailUpdateParams::Mode::OrSymbol
              ]
            )
          )
        end
        attr_reader :modes

        sig do
          params(
            modes:
              T::Array[
                Telnyx::AgentGateways::GuardrailUpdateParams::Mode::OrSymbol
              ]
          ).void
        end
        attr_writer :modes

        # A name, unique on the instance. A request names it in its `guardrails` field.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The type's settings. `content_filter`: `patterns` (prebuilt patterns by name,
        # such as `us_ssn` or `email`), `regexes`, `keywords`, and `categories` (such as
        # `prompt_injection`), each with an `action` of `block` or `mask`.
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
        sig { returns(T.nilable(T.anything)) }
        attr_reader :settings

        sig { params(settings: T.anything).void }
        attr_writer :settings

        sig do
          params(
            instance_id: String,
            guardrail_id: String,
            always_on: T::Boolean,
            modes:
              T::Array[
                Telnyx::AgentGateways::GuardrailUpdateParams::Mode::OrSymbol
              ],
            name: String,
            settings: T.anything,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          guardrail_id:,
          # `true` runs the guardrail on every request, and a request cannot turn it off.
          # `false` runs it on the requests that name it.
          always_on: nil,
          # When the guardrail runs. Each type runs in some modes only.
          modes: nil,
          # A name, unique on the instance. A request names it in its `guardrails` field.
          name: nil,
          # The type's settings. `content_filter`: `patterns` (prebuilt patterns by name,
          # such as `us_ssn` or `email`), `regexes`, `keywords`, and `categories` (such as
          # `prompt_injection`), each with an `action` of `block` or `mask`.
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

        sig do
          override.returns(
            {
              instance_id: String,
              guardrail_id: String,
              always_on: T::Boolean,
              modes:
                T::Array[
                  Telnyx::AgentGateways::GuardrailUpdateParams::Mode::OrSymbol
                ],
              name: String,
              settings: T.anything,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Mode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AgentGateways::GuardrailUpdateParams::Mode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEFORE_REQUEST =
            T.let(
              :before_request,
              Telnyx::AgentGateways::GuardrailUpdateParams::Mode::TaggedSymbol
            )
          DURING_REQUEST =
            T.let(
              :during_request,
              Telnyx::AgentGateways::GuardrailUpdateParams::Mode::TaggedSymbol
            )
          AFTER_REQUEST =
            T.let(
              :after_request,
              Telnyx::AgentGateways::GuardrailUpdateParams::Mode::TaggedSymbol
            )
          LOGGING_ONLY =
            T.let(
              :logging_only,
              Telnyx::AgentGateways::GuardrailUpdateParams::Mode::TaggedSymbol
            )
          BEFORE_TOOL_REQUEST =
            T.let(
              :before_tool_request,
              Telnyx::AgentGateways::GuardrailUpdateParams::Mode::TaggedSymbol
            )
          DURING_TOOL_REQUEST =
            T.let(
              :during_tool_request,
              Telnyx::AgentGateways::GuardrailUpdateParams::Mode::TaggedSymbol
            )
          AFTER_TOOL_REQUEST =
            T.let(
              :after_tool_request,
              Telnyx::AgentGateways::GuardrailUpdateParams::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::GuardrailUpdateParams::Mode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
