# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class GuardrailCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::GuardrailCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        # When the guardrail runs. Each type runs in some modes only.
        sig do
          returns(
            T::Array[
              Telnyx::AgentGateways::GuardrailCreateParams::Mode::OrSymbol
            ]
          )
        end
        attr_accessor :modes

        # A name, unique on the instance. A request names it in its `guardrails` field.
        sig { returns(String) }
        attr_accessor :name

        # The kind of check. It cannot change after create.
        sig do
          returns(Telnyx::AgentGateways::GuardrailCreateParams::Type::OrSymbol)
        end
        attr_accessor :type

        # `true` runs the guardrail on every request, and a request cannot turn it off.
        # `false` runs it on the requests that name it.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :always_on

        sig { params(always_on: T::Boolean).void }
        attr_writer :always_on

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
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :settings

        sig { params(settings: T::Hash[Symbol, T.anything]).void }
        attr_writer :settings

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
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
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

        sig do
          override.returns(
            {
              instance_id: String,
              modes:
                T::Array[
                  Telnyx::AgentGateways::GuardrailCreateParams::Mode::OrSymbol
                ],
              name: String,
              type:
                Telnyx::AgentGateways::GuardrailCreateParams::Type::OrSymbol,
              always_on: T::Boolean,
              settings: T::Hash[Symbol, T.anything],
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
              T.all(Symbol, Telnyx::AgentGateways::GuardrailCreateParams::Mode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEFORE_REQUEST =
            T.let(
              :before_request,
              Telnyx::AgentGateways::GuardrailCreateParams::Mode::TaggedSymbol
            )
          DURING_REQUEST =
            T.let(
              :during_request,
              Telnyx::AgentGateways::GuardrailCreateParams::Mode::TaggedSymbol
            )
          AFTER_REQUEST =
            T.let(
              :after_request,
              Telnyx::AgentGateways::GuardrailCreateParams::Mode::TaggedSymbol
            )
          LOGGING_ONLY =
            T.let(
              :logging_only,
              Telnyx::AgentGateways::GuardrailCreateParams::Mode::TaggedSymbol
            )
          BEFORE_TOOL_REQUEST =
            T.let(
              :before_tool_request,
              Telnyx::AgentGateways::GuardrailCreateParams::Mode::TaggedSymbol
            )
          DURING_TOOL_REQUEST =
            T.let(
              :during_tool_request,
              Telnyx::AgentGateways::GuardrailCreateParams::Mode::TaggedSymbol
            )
          AFTER_TOOL_REQUEST =
            T.let(
              :after_tool_request,
              Telnyx::AgentGateways::GuardrailCreateParams::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::GuardrailCreateParams::Mode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The kind of check. It cannot change after create.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AgentGateways::GuardrailCreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTENT_FILTER =
            T.let(
              :content_filter,
              Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
            )
          TOOL_PERMISSION =
            T.let(
              :tool_permission,
              Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
            )
          MODEL_JUDGE =
            T.let(
              :model_judge,
              Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
            )
          CUSTOM_CODE =
            T.let(
              :custom_code,
              Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
            )
          LAKERA =
            T.let(
              :lakera,
              Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
            )
          PRESIDIO =
            T.let(
              :presidio,
              Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
            )
          BEDROCK =
            T.let(
              :bedrock,
              Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
            )
          AZURE_CONTENT_SAFETY =
            T.let(
              :azure_content_safety,
              Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::GuardrailCreateParams::Type::TaggedSymbol
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
