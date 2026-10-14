# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class UsageRetrieveExportResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::Variants
            ]
          )
        end
        attr_accessor :data

        sig do
          returns(
            Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Meta
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                T.any(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::OrHash,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::OrHash
                )
              ],
            meta:
              Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::Variants
                ],
              meta:
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Meta
            }
          )
        end
        def to_hash
        end

        module Data
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest,
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation
              )
            end

          class InferenceRequest < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest,
                  Telnyx::Internal::AnyHash
                )
              end

            # Deterministic: req\_{request_id}\_r{revision}. Deduplicate on id.
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Integer) }
            attr_accessor :attempts

            sig do
              returns(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller::TaggedSymbol
              )
            end
            attr_accessor :biller

            sig { returns(T::Boolean) }
            attr_accessor :cache_hit

            sig { returns(Integer) }
            attr_accessor :configuration_version

            # USD decimal string with exactly 6 places, 0 to 1000000000.000000 (the Money
            # bound); enforcement basis, not invoice truth.
            sig { returns(T.nilable(String)) }
            attr_accessor :cost

            sig { returns(T.nilable(String)) }
            attr_accessor :end_user_id

            sig { returns(T.nilable(Integer)) }
            attr_accessor :input_tokens

            # Customer request tags captured at admission; {} when untagged.
            sig do
              returns(
                T::Hash[
                  Symbol,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Metadata::Variants
                ]
              )
            end
            attr_accessor :metadata

            sig { returns(String) }
            attr_accessor :model

            sig { returns(T.nilable(Integer)) }
            attr_accessor :output_tokens

            sig do
              returns(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol::TaggedSymbol
              )
            end
            attr_accessor :protocol

            sig { returns(String) }
            attr_accessor :provider

            sig { returns(T.nilable(String)) }
            attr_accessor :provider_key_id

            sig { returns(String) }
            attr_accessor :provider_model

            sig { returns(String) }
            attr_accessor :rate_version

            sig { returns(String) }
            attr_accessor :request_id

            sig { returns(Integer) }
            attr_accessor :revision

            sig do
              returns(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode::TaggedSymbol
              )
            end
            attr_accessor :route_mode

            sig { returns(Float) }
            attr_accessor :schema_version

            sig do
              returns(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            sig { returns(T::Boolean) }
            attr_accessor :stream

            # Previous revision id; keep the highest revision per request_id.
            sig { returns(T.nilable(String)) }
            attr_accessor :supersedes

            sig do
              returns(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Timings
              )
            end
            attr_reader :timings

            sig do
              params(
                timings:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Timings::OrHash
              ).void
            end
            attr_writer :timings

            sig { returns(String) }
            attr_accessor :token_group_id

            sig { returns(String) }
            attr_accessor :token_key_id

            sig { returns(T.nilable(String)) }
            attr_accessor :token_user_id

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource::TaggedSymbol
                )
              )
            end
            attr_accessor :usage_source

            sig do
              returns(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus::TaggedSymbol
              )
            end
            attr_accessor :usage_status

            sig do
              params(
                id: String,
                attempts: Integer,
                biller:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller::OrSymbol,
                cache_hit: T::Boolean,
                configuration_version: Integer,
                cost: T.nilable(String),
                end_user_id: T.nilable(String),
                input_tokens: T.nilable(Integer),
                metadata:
                  T::Hash[
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Metadata::Variants
                  ],
                model: String,
                output_tokens: T.nilable(Integer),
                protocol:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol::OrSymbol,
                provider: String,
                provider_key_id: T.nilable(String),
                provider_model: String,
                rate_version: String,
                request_id: String,
                revision: Integer,
                route_mode:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode::OrSymbol,
                status:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status::OrSymbol,
                stream: T::Boolean,
                supersedes: T.nilable(String),
                timings:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Timings::OrHash,
                token_group_id: String,
                token_key_id: String,
                token_user_id: T.nilable(String),
                usage_source:
                  T.nilable(
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource::OrSymbol
                  ),
                usage_status:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus::OrSymbol,
                schema_version: Float,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Deterministic: req\_{request_id}\_r{revision}. Deduplicate on id.
              id:,
              attempts:,
              biller:,
              cache_hit:,
              configuration_version:,
              # USD decimal string with exactly 6 places, 0 to 1000000000.000000 (the Money
              # bound); enforcement basis, not invoice truth.
              cost:,
              end_user_id:,
              input_tokens:,
              # Customer request tags captured at admission; {} when untagged.
              metadata:,
              model:,
              output_tokens:,
              protocol:,
              provider:,
              provider_key_id:,
              provider_model:,
              rate_version:,
              request_id:,
              revision:,
              route_mode:,
              status:,
              stream:,
              # Previous revision id; keep the highest revision per request_id.
              supersedes:,
              timings:,
              token_group_id:,
              token_key_id:,
              token_user_id:,
              usage_source:,
              usage_status:,
              schema_version: 1,
              type: :"inference.request"
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  attempts: Integer,
                  biller:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller::TaggedSymbol,
                  cache_hit: T::Boolean,
                  configuration_version: Integer,
                  cost: T.nilable(String),
                  end_user_id: T.nilable(String),
                  input_tokens: T.nilable(Integer),
                  metadata:
                    T::Hash[
                      Symbol,
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Metadata::Variants
                    ],
                  model: String,
                  output_tokens: T.nilable(Integer),
                  protocol:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol::TaggedSymbol,
                  provider: String,
                  provider_key_id: T.nilable(String),
                  provider_model: String,
                  rate_version: String,
                  request_id: String,
                  revision: Integer,
                  route_mode:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode::TaggedSymbol,
                  schema_version: Float,
                  status:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status::TaggedSymbol,
                  stream: T::Boolean,
                  supersedes: T.nilable(String),
                  timings:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Timings,
                  token_group_id: String,
                  token_key_id: String,
                  token_user_id: T.nilable(String),
                  type: Symbol,
                  usage_source:
                    T.nilable(
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource::TaggedSymbol
                    ),
                  usage_status:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            module Biller
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TELNYX =
                T.let(
                  :telnyx,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller::TaggedSymbol
                )
              PROVIDER =
                T.let(
                  :provider,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller::TaggedSymbol
                )
              NONE =
                T.let(
                  :none,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Biller::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Metadata
              extend Telnyx::Internal::Type::Union

              Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Metadata::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            module Protocol
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPENAI =
                T.let(
                  :openai,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol::TaggedSymbol
                )
              ANTHROPIC =
                T.let(
                  :anthropic,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Protocol::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module RouteMode
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MANAGED =
                T.let(
                  :managed,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode::TaggedSymbol
                )
              BYOK =
                T.let(
                  :byok,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode::TaggedSymbol
                )
              CACHE =
                T.let(
                  :cache,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::RouteMode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUCCEEDED =
                T.let(
                  :succeeded,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status::TaggedSymbol
                )
              PARTIAL =
                T.let(
                  :partial,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status::TaggedSymbol
                )
              UNKNOWN =
                T.let(
                  :unknown,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Timings < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::Timings,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Time) }
              attr_accessor :admitted_at

              sig { returns(T.nilable(Time)) }
              attr_accessor :completed_at

              sig { returns(T.nilable(Time)) }
              attr_accessor :first_attempt_at

              # completed_at - admitted_at as recorded by the ledger; not time to first token.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :gateway_duration_ms

              sig { returns(Time) }
              attr_accessor :settled_at

              sig do
                params(
                  admitted_at: Time,
                  completed_at: T.nilable(Time),
                  first_attempt_at: T.nilable(Time),
                  gateway_duration_ms: T.nilable(Integer),
                  settled_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                admitted_at:,
                completed_at:,
                first_attempt_at:,
                # completed_at - admitted_at as recorded by the ledger; not time to first token.
                gateway_duration_ms:,
                settled_at:
              )
              end

              sig do
                override.returns(
                  {
                    admitted_at: Time,
                    completed_at: T.nilable(Time),
                    first_attempt_at: T.nilable(Time),
                    gateway_duration_ms: T.nilable(Integer),
                    settled_at: Time
                  }
                )
              end
              def to_hash
              end
            end

            module UsageSource
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PROVIDER =
                T.let(
                  :provider,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource::TaggedSymbol
                )
              GATEWAY_TOKENIZER =
                T.let(
                  :gateway_tokenizer,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource::TaggedSymbol
                )
              OPERATOR =
                T.let(
                  :operator,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageSource::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module UsageStatus
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              KNOWN =
                T.let(
                  :known,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus::TaggedSymbol
                )
              UNKNOWN =
                T.let(
                  :unknown,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus::TaggedSymbol
                )
              RECONCILED =
                T.let(
                  :reconciled,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::InferenceRequest::UsageStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class GuardrailEvaluation < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(T.nilable(String)) }
            attr_accessor :end_user_id

            sig { returns(T.nilable(Integer)) }
            attr_accessor :evaluation_input_tokens

            sig { returns(T.nilable(Integer)) }
            attr_accessor :evaluation_output_tokens

            sig { returns(T::Array[Telnyx::LlmTokenGateway::GuardrailFinding]) }
            attr_accessor :findings

            # Customer request tags from the x-ltg-metadata header: up to 5 entries. Keys are
            # case-sensitive; keys starting with ltg*, telnyx*, litellm* or cf* (any case) are
            # reserved. Values are strings (1-256 characters, no control or format
            # characters), integers within +/-9007199254740991, or booleans; floats, null,
            # objects and arrays are rejected. Values that look like credentials are rejected.
            # Tags are attribution only: never forwarded upstream, never part of the response
            # cache key, never used for budgets or routing. An untagged request reports {}.
            sig do
              returns(
                T::Hash[
                  Symbol,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Metadata::Variants
                ]
              )
            end
            attr_accessor :metadata

            sig { returns(String) }
            attr_accessor :model

            sig do
              returns(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome::TaggedSymbol
              )
            end
            attr_accessor :outcome

            sig { returns(String) }
            attr_accessor :request_id

            sig { returns(Float) }
            attr_accessor :schema_version

            sig do
              returns(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage::TaggedSymbol
              )
            end
            attr_accessor :stage

            sig { returns(String) }
            attr_accessor :token_group_id

            sig { returns(String) }
            attr_accessor :token_key_id

            sig { returns(T.nilable(String)) }
            attr_accessor :token_user_id

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                id: String,
                created_at: Time,
                end_user_id: T.nilable(String),
                evaluation_input_tokens: T.nilable(Integer),
                evaluation_output_tokens: T.nilable(Integer),
                findings:
                  T::Array[Telnyx::LlmTokenGateway::GuardrailFinding::OrHash],
                metadata:
                  T::Hash[
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Metadata::Variants
                  ],
                model: String,
                outcome:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome::OrSymbol,
                request_id: String,
                stage:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage::OrSymbol,
                token_group_id: String,
                token_key_id: String,
                token_user_id: T.nilable(String),
                schema_version: Float,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              created_at:,
              end_user_id:,
              evaluation_input_tokens:,
              evaluation_output_tokens:,
              findings:,
              # Customer request tags from the x-ltg-metadata header: up to 5 entries. Keys are
              # case-sensitive; keys starting with ltg*, telnyx*, litellm* or cf* (any case) are
              # reserved. Values are strings (1-256 characters, no control or format
              # characters), integers within +/-9007199254740991, or booleans; floats, null,
              # objects and arrays are rejected. Values that look like credentials are rejected.
              # Tags are attribution only: never forwarded upstream, never part of the response
              # cache key, never used for budgets or routing. An untagged request reports {}.
              metadata:,
              model:,
              outcome:,
              request_id:,
              stage:,
              token_group_id:,
              token_key_id:,
              token_user_id:,
              schema_version: 1,
              type: :"guardrail.evaluation"
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  end_user_id: T.nilable(String),
                  evaluation_input_tokens: T.nilable(Integer),
                  evaluation_output_tokens: T.nilable(Integer),
                  findings: T::Array[Telnyx::LlmTokenGateway::GuardrailFinding],
                  metadata:
                    T::Hash[
                      Symbol,
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Metadata::Variants
                    ],
                  model: String,
                  outcome:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome::TaggedSymbol,
                  request_id: String,
                  schema_version: Float,
                  stage:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage::TaggedSymbol,
                  token_group_id: String,
                  token_key_id: String,
                  token_user_id: T.nilable(String),
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            module Metadata
              extend Telnyx::Internal::Type::Union

              Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Metadata::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            module Outcome
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EVALUATED =
                T.let(
                  :evaluated,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome::TaggedSymbol
                )
              FLAGGED =
                T.let(
                  :flagged,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome::TaggedSymbol
                )
              BLOCKED =
                T.let(
                  :blocked,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome::TaggedSymbol
                )
              UNEVALUATED =
                T.let(
                  :unevaluated,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Outcome::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Stage
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PROMPT =
                T.let(
                  :prompt,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage::TaggedSymbol
                )
              RESPONSE =
                T.let(
                  :response,
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::GuardrailEvaluation::Stage::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Data::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :has_more

          sig { returns(Integer) }
          attr_accessor :horizon_lag_seconds

          sig { returns(String) }
          attr_accessor :next_cursor

          sig do
            params(
              has_more: T::Boolean,
              horizon_lag_seconds: Integer,
              next_cursor: String
            ).returns(T.attached_class)
          end
          def self.new(has_more:, horizon_lag_seconds:, next_cursor:)
          end

          sig do
            override.returns(
              {
                has_more: T::Boolean,
                horizon_lag_seconds: Integer,
                next_cursor: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
