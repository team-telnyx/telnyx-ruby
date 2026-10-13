# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::Usage#retrieve_export
      class UsageRetrieveExportResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation>]
        required :data,
                 -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Meta]
        required :meta, -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation>]
        #   @param meta [Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Meta]

        module Data
          extend Telnyx::Internal::Type::Union

          discriminator :type

          variant :"inference.request",
                  -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest }

          variant :"guardrail.evaluation",
                  -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation }

          class InferenceRequest < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Deterministic: req\_{request_id}\_r{revision}. Deduplicate on id.
            #
            #   @return [String]
            required :id, String

            # @!attribute attempts
            #
            #   @return [Integer]
            required :attempts, Integer

            # @!attribute biller
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller]
            required :biller,
                     enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller }

            # @!attribute cache_hit
            #
            #   @return [Boolean]
            required :cache_hit, Telnyx::Internal::Type::Boolean

            # @!attribute configuration_version
            #
            #   @return [Integer]
            required :configuration_version, Integer

            # @!attribute cost
            #   USD decimal string with exactly 6 places, 0 to 1000000000.000000 (the Money
            #   bound); enforcement basis, not invoice truth.
            #
            #   @return [String, nil]
            required :cost, String, nil?: true

            # @!attribute end_user_id
            #
            #   @return [String, nil]
            required :end_user_id, String, nil?: true

            # @!attribute input_tokens
            #
            #   @return [Integer, nil]
            required :input_tokens, Integer, nil?: true

            # @!attribute metadata
            #   Customer request tags captured at admission; {} when untagged.
            #
            #   @return [Hash{Symbol=>String, Integer, Boolean}]
            required :metadata,
                     -> { Telnyx::Internal::Type::HashOf[union: Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Metadata] }

            # @!attribute model
            #
            #   @return [String]
            required :model, String

            # @!attribute output_tokens
            #
            #   @return [Integer, nil]
            required :output_tokens, Integer, nil?: true

            # @!attribute protocol
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol]
            required :protocol,
                     enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol }

            # @!attribute provider
            #
            #   @return [String]
            required :provider, String

            # @!attribute provider_key_id
            #
            #   @return [String, nil]
            required :provider_key_id, String, nil?: true

            # @!attribute provider_model
            #
            #   @return [String]
            required :provider_model, String

            # @!attribute rate_version
            #
            #   @return [String]
            required :rate_version, String

            # @!attribute request_id
            #
            #   @return [String]
            required :request_id, String

            # @!attribute revision
            #
            #   @return [Integer]
            required :revision, Integer

            # @!attribute route_mode
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode]
            required :route_mode,
                     enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode }

            # @!attribute schema_version
            #
            #   @return [Float, 1]
            required :schema_version, const: 1

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status]
            required :status,
                     enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status }

            # @!attribute stream
            #
            #   @return [Boolean]
            required :stream, Telnyx::Internal::Type::Boolean

            # @!attribute supersedes
            #   Previous revision id; keep the highest revision per request_id.
            #
            #   @return [String, nil]
            required :supersedes, String, nil?: true

            # @!attribute timings
            #
            #   @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Timings]
            required :timings,
                     -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Timings }

            # @!attribute token_group_id
            #
            #   @return [String]
            required :token_group_id, String

            # @!attribute token_key_id
            #
            #   @return [String]
            required :token_key_id, String

            # @!attribute token_user_id
            #
            #   @return [String, nil]
            required :token_user_id, String, nil?: true

            # @!attribute type
            #
            #   @return [Symbol, :"inference.request"]
            required :type, const: :"inference.request"

            # @!attribute usage_source
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource, nil]
            required :usage_source,
                     enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource },
                     nil?: true

            # @!attribute usage_status
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus]
            required :usage_status,
                     enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus }

            # @!method initialize(id:, attempts:, biller:, cache_hit:, configuration_version:, cost:, end_user_id:, input_tokens:, metadata:, model:, output_tokens:, protocol:, provider:, provider_key_id:, provider_model:, rate_version:, request_id:, revision:, route_mode:, status:, stream:, supersedes:, timings:, token_group_id:, token_key_id:, token_user_id:, usage_source:, usage_status:, schema_version: 1, type: :"inference.request")
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest}
            #   for more details.
            #
            #   @param id [String] Deterministic: req\_{request_id}\_r{revision}. Deduplicate on id.
            #
            #   @param attempts [Integer]
            #
            #   @param biller [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller]
            #
            #   @param cache_hit [Boolean]
            #
            #   @param configuration_version [Integer]
            #
            #   @param cost [String, nil] USD decimal string with exactly 6 places, 0 to 1000000000.000000 (the Money boun
            #
            #   @param end_user_id [String, nil]
            #
            #   @param input_tokens [Integer, nil]
            #
            #   @param metadata [Hash{Symbol=>String, Integer, Boolean}] Customer request tags captured at admission; {} when untagged.
            #
            #   @param model [String]
            #
            #   @param output_tokens [Integer, nil]
            #
            #   @param protocol [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol]
            #
            #   @param provider [String]
            #
            #   @param provider_key_id [String, nil]
            #
            #   @param provider_model [String]
            #
            #   @param rate_version [String]
            #
            #   @param request_id [String]
            #
            #   @param revision [Integer]
            #
            #   @param route_mode [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode]
            #
            #   @param status [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status]
            #
            #   @param stream [Boolean]
            #
            #   @param supersedes [String, nil] Previous revision id; keep the highest revision per request_id.
            #
            #   @param timings [Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Timings]
            #
            #   @param token_group_id [String]
            #
            #   @param token_key_id [String]
            #
            #   @param token_user_id [String, nil]
            #
            #   @param usage_source [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource, nil]
            #
            #   @param usage_status [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus]
            #
            #   @param schema_version [Float, 1]
            #
            #   @param type [Symbol, :"inference.request"]

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest#biller
            module Biller
              extend Telnyx::Internal::Type::Enum

              TELNYX = :telnyx
              PROVIDER = :provider
              NONE = :none

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            module Metadata
              extend Telnyx::Internal::Type::Union

              variant String

              variant Integer

              variant Telnyx::Internal::Type::Boolean

              # @!method self.variants
              #   @return [Array(String, Integer, Boolean)]
            end

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest#protocol
            module Protocol
              extend Telnyx::Internal::Type::Enum

              OPENAI = :openai
              ANTHROPIC = :anthropic

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest#route_mode
            module RouteMode
              extend Telnyx::Internal::Type::Enum

              MANAGED = :managed
              BYOK = :byok
              CACHE = :cache

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest#status
            module Status
              extend Telnyx::Internal::Type::Enum

              SUCCEEDED = :succeeded
              FAILED = :failed
              PARTIAL = :partial
              UNKNOWN = :unknown

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest#timings
            class Timings < Telnyx::Internal::Type::BaseModel
              # @!attribute admitted_at
              #
              #   @return [Time]
              required :admitted_at, Time

              # @!attribute completed_at
              #
              #   @return [Time, nil]
              required :completed_at, Time, nil?: true

              # @!attribute first_attempt_at
              #
              #   @return [Time, nil]
              required :first_attempt_at, Time, nil?: true

              # @!attribute gateway_duration_ms
              #   completed_at - admitted_at as recorded by the ledger; not time to first token.
              #
              #   @return [Integer, nil]
              required :gateway_duration_ms, Integer, nil?: true

              # @!attribute settled_at
              #
              #   @return [Time]
              required :settled_at, Time

              # @!method initialize(admitted_at:, completed_at:, first_attempt_at:, gateway_duration_ms:, settled_at:)
              #   @param admitted_at [Time]
              #
              #   @param completed_at [Time, nil]
              #
              #   @param first_attempt_at [Time, nil]
              #
              #   @param gateway_duration_ms [Integer, nil] completed_at - admitted_at as recorded by the ledger; not time to first token.
              #
              #   @param settled_at [Time]
            end

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest#usage_source
            module UsageSource
              extend Telnyx::Internal::Type::Enum

              PROVIDER = :provider
              GATEWAY_TOKENIZER = :gateway_tokenizer
              OPERATOR = :operator

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest#usage_status
            module UsageStatus
              extend Telnyx::Internal::Type::Enum

              KNOWN = :known
              UNKNOWN = :unknown
              RECONCILED = :reconciled

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class GuardrailEvaluation < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute end_user_id
            #
            #   @return [String, nil]
            required :end_user_id, String, nil?: true

            # @!attribute evaluation_input_tokens
            #
            #   @return [Integer, nil]
            required :evaluation_input_tokens, Integer, nil?: true

            # @!attribute evaluation_output_tokens
            #
            #   @return [Integer, nil]
            required :evaluation_output_tokens, Integer, nil?: true

            # @!attribute findings
            #
            #   @return [Array<Telnyx::Models::LlmTokenGateway::GuardrailFinding>]
            required :findings, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::LlmTokenGateway::GuardrailFinding] }

            # @!attribute metadata
            #   Customer request tags from the x-ltg-metadata header: up to 5 entries. Keys are
            #   case-sensitive; keys starting with ltg*, telnyx*, litellm* or cf* (any case) are
            #   reserved. Values are strings (1-256 characters, no control or format
            #   characters), integers within +/-9007199254740991, or booleans; floats, null,
            #   objects and arrays are rejected. Values that look like credentials are rejected.
            #   Tags are attribution only: never forwarded upstream, never part of the response
            #   cache key, never used for budgets or routing. An untagged request reports {}.
            #
            #   @return [Hash{Symbol=>String, Integer, Boolean}]
            required :metadata,
                     -> { Telnyx::Internal::Type::HashOf[union: Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Metadata] }

            # @!attribute model
            #
            #   @return [String]
            required :model, String

            # @!attribute outcome
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome]
            required :outcome,
                     enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome }

            # @!attribute request_id
            #
            #   @return [String]
            required :request_id, String

            # @!attribute schema_version
            #
            #   @return [Float, 1]
            required :schema_version, const: 1

            # @!attribute stage
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage]
            required :stage,
                     enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage }

            # @!attribute token_group_id
            #
            #   @return [String]
            required :token_group_id, String

            # @!attribute token_key_id
            #
            #   @return [String]
            required :token_key_id, String

            # @!attribute token_user_id
            #
            #   @return [String, nil]
            required :token_user_id, String, nil?: true

            # @!attribute type
            #
            #   @return [Symbol, :"guardrail.evaluation"]
            required :type, const: :"guardrail.evaluation"

            # @!method initialize(id:, created_at:, end_user_id:, evaluation_input_tokens:, evaluation_output_tokens:, findings:, metadata:, model:, outcome:, request_id:, stage:, token_group_id:, token_key_id:, token_user_id:, schema_version: 1, type: :"guardrail.evaluation")
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param created_at [Time]
            #
            #   @param end_user_id [String, nil]
            #
            #   @param evaluation_input_tokens [Integer, nil]
            #
            #   @param evaluation_output_tokens [Integer, nil]
            #
            #   @param findings [Array<Telnyx::Models::LlmTokenGateway::GuardrailFinding>]
            #
            #   @param metadata [Hash{Symbol=>String, Integer, Boolean}] Customer request tags from the x-ltg-metadata header: up to 5 entries. Keys are
            #
            #   @param model [String]
            #
            #   @param outcome [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome]
            #
            #   @param request_id [String]
            #
            #   @param stage [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage]
            #
            #   @param token_group_id [String]
            #
            #   @param token_key_id [String]
            #
            #   @param token_user_id [String, nil]
            #
            #   @param schema_version [Float, 1]
            #
            #   @param type [Symbol, :"guardrail.evaluation"]

            module Metadata
              extend Telnyx::Internal::Type::Union

              variant String

              variant Integer

              variant Telnyx::Internal::Type::Boolean

              # @!method self.variants
              #   @return [Array(String, Integer, Boolean)]
            end

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation#outcome
            module Outcome
              extend Telnyx::Internal::Type::Enum

              EVALUATED = :evaluated
              FLAGGED = :flagged
              BLOCKED = :blocked
              UNEVALUATED = :unevaluated

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation#stage
            module Stage
              extend Telnyx::Internal::Type::Enum

              PROMPT = :prompt
              RESPONSE = :response

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest, Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation)]
        end

        # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute has_more
          #
          #   @return [Boolean]
          required :has_more, Telnyx::Internal::Type::Boolean

          # @!attribute horizon_lag_seconds
          #
          #   @return [Integer]
          required :horizon_lag_seconds, Integer

          # @!attribute next_cursor
          #
          #   @return [String]
          required :next_cursor, String

          # @!method initialize(has_more:, horizon_lag_seconds:, next_cursor:)
          #   @param has_more [Boolean]
          #   @param horizon_lag_seconds [Integer]
          #   @param next_cursor [String]
        end
      end
    end
  end
end
