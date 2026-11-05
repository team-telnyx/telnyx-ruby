# typed: strong

module Telnyx
  module Models
    AgentGatewayGuardrail = AgentGateways::AgentGatewayGuardrail

    module AgentGateways
      class AgentGatewayGuardrail < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayGuardrail,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the guardrail.
        sig { returns(String) }
        attr_accessor :id

        # Whether it runs on every request.
        sig { returns(T::Boolean) }
        attr_accessor :always_on

        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # When the guardrail runs.
        sig do
          returns(
            T::Array[
              Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
            ]
          )
        end
        attr_accessor :modes

        # What a request names in its `guardrails` field.
        sig { returns(String) }
        attr_accessor :name

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
        # `endpoint`, `severity` (0 to 7). Provider secrets are write-only. Responses
        # leave the secrets out.
        sig { returns(T.anything) }
        attr_accessor :settings

        sig do
          returns(
            Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            always_on: T::Boolean,
            created_at: T.nilable(Time),
            modes:
              T::Array[
                Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::OrSymbol
              ],
            name: String,
            settings: T.anything,
            type: Telnyx::AgentGateways::AgentGatewayGuardrail::Type::OrSymbol,
            updated_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the guardrail.
          id:,
          # Whether it runs on every request.
          always_on:,
          created_at:,
          # When the guardrail runs.
          modes:,
          # What a request names in its `guardrails` field.
          name:,
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
          # `endpoint`, `severity` (0 to 7). Provider secrets are write-only. Responses
          # leave the secrets out.
          settings:,
          type:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              always_on: T::Boolean,
              created_at: T.nilable(Time),
              modes:
                T::Array[
                  Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
                ],
              name: String,
              settings: T.anything,
              type:
                Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol,
              updated_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        module Mode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AgentGateways::AgentGatewayGuardrail::Mode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEFORE_REQUEST =
            T.let(
              :before_request,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
            )
          DURING_REQUEST =
            T.let(
              :during_request,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
            )
          AFTER_REQUEST =
            T.let(
              :after_request,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
            )
          LOGGING_ONLY =
            T.let(
              :logging_only,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
            )
          BEFORE_TOOL_REQUEST =
            T.let(
              :before_tool_request,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
            )
          DURING_TOOL_REQUEST =
            T.let(
              :during_tool_request,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
            )
          AFTER_TOOL_REQUEST =
            T.let(
              :after_tool_request,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayGuardrail::Mode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AgentGateways::AgentGatewayGuardrail::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTENT_FILTER =
            T.let(
              :content_filter,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
            )
          TOOL_PERMISSION =
            T.let(
              :tool_permission,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
            )
          MODEL_JUDGE =
            T.let(
              :model_judge,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
            )
          CUSTOM_CODE =
            T.let(
              :custom_code,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
            )
          LAKERA =
            T.let(
              :lakera,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
            )
          PRESIDIO =
            T.let(
              :presidio,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
            )
          BEDROCK =
            T.let(
              :bedrock,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
            )
          AZURE_CONTENT_SAFETY =
            T.let(
              :azure_content_safety,
              Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayGuardrail::Type::TaggedSymbol
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
