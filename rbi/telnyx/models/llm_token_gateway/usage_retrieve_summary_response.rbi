# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class UsageRetrieveSummaryResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          returns(
            Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::OrHash,
            meta:
              Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data,
              meta:
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay
              ]
            )
          end
          attr_accessor :by_day

          sig do
            returns(
              T::Array[
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel
              ]
            )
          end
          attr_accessor :by_model

          sig do
            returns(
              Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails
            )
          end
          attr_reader :guardrails

          sig do
            params(
              guardrails:
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::OrHash
            ).void
          end
          attr_writer :guardrails

          sig do
            returns(
              Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals
            )
          end
          attr_reader :totals

          sig do
            params(
              totals:
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals::OrHash
            ).void
          end
          attr_writer :totals

          sig do
            params(
              by_day:
                T::Array[
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay::OrHash
                ],
              by_model:
                T::Array[
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel::OrHash
                ],
              guardrails:
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::OrHash,
              totals:
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals::OrHash
            ).returns(T.attached_class)
          end
          def self.new(by_day:, by_model:, guardrails:, totals:)
          end

          sig do
            override.returns(
              {
                by_day:
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay
                  ],
                by_model:
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel
                  ],
                guardrails:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails,
                totals:
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals
              }
            )
          end
          def to_hash
          end

          class ByDay < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :cache_hits

            sig { returns(Date) }
            attr_accessor :date

            sig { returns(Integer) }
            attr_accessor :failed_requests

            sig { returns(Integer) }
            attr_accessor :input_tokens

            sig { returns(Integer) }
            attr_accessor :output_tokens

            sig { returns(Integer) }
            attr_accessor :partial_requests

            sig { returns(Integer) }
            attr_accessor :requests

            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            sig { returns(Float) }
            attr_accessor :reserved_spend

            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            sig { returns(Float) }
            attr_accessor :spend

            sig { returns(Integer) }
            attr_accessor :succeeded_requests

            sig { returns(Integer) }
            attr_accessor :unknown_requests

            sig do
              params(
                cache_hits: Integer,
                date: Date,
                failed_requests: Integer,
                input_tokens: Integer,
                output_tokens: Integer,
                partial_requests: Integer,
                requests: Integer,
                reserved_spend: Float,
                spend: Float,
                succeeded_requests: Integer,
                unknown_requests: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              cache_hits:,
              date:,
              failed_requests:,
              input_tokens:,
              output_tokens:,
              partial_requests:,
              requests:,
              # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
              # never binary float accounting.
              reserved_spend:,
              # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
              # never binary float accounting.
              spend:,
              succeeded_requests:,
              unknown_requests:
            )
            end

            sig do
              override.returns(
                {
                  cache_hits: Integer,
                  date: Date,
                  failed_requests: Integer,
                  input_tokens: Integer,
                  output_tokens: Integer,
                  partial_requests: Integer,
                  requests: Integer,
                  reserved_spend: Float,
                  spend: Float,
                  succeeded_requests: Integer,
                  unknown_requests: Integer
                }
              )
            end
            def to_hash
            end
          end

          class ByModel < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :cache_hits

            sig { returns(Integer) }
            attr_accessor :failed_requests

            sig { returns(Integer) }
            attr_accessor :input_tokens

            sig { returns(String) }
            attr_accessor :model

            sig { returns(Integer) }
            attr_accessor :output_tokens

            sig { returns(Integer) }
            attr_accessor :partial_requests

            sig { returns(Integer) }
            attr_accessor :requests

            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            sig { returns(Float) }
            attr_accessor :reserved_spend

            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            sig { returns(Float) }
            attr_accessor :spend

            sig { returns(Integer) }
            attr_accessor :succeeded_requests

            sig { returns(Integer) }
            attr_accessor :unknown_requests

            sig do
              params(
                cache_hits: Integer,
                failed_requests: Integer,
                input_tokens: Integer,
                model: String,
                output_tokens: Integer,
                partial_requests: Integer,
                requests: Integer,
                reserved_spend: Float,
                spend: Float,
                succeeded_requests: Integer,
                unknown_requests: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              cache_hits:,
              failed_requests:,
              input_tokens:,
              model:,
              output_tokens:,
              partial_requests:,
              requests:,
              # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
              # never binary float accounting.
              reserved_spend:,
              # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
              # never binary float accounting.
              spend:,
              succeeded_requests:,
              unknown_requests:
            )
            end

            sig do
              override.returns(
                {
                  cache_hits: Integer,
                  failed_requests: Integer,
                  input_tokens: Integer,
                  model: String,
                  output_tokens: Integer,
                  partial_requests: Integer,
                  requests: Integer,
                  reserved_spend: Float,
                  spend: Float,
                  succeeded_requests: Integer,
                  unknown_requests: Integer
                }
              )
            end
            def to_hash
            end
          end

          class Guardrails < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :blocked_events

            sig { returns(Integer) }
            attr_accessor :flagged_events

            sig do
              returns(
                T::Array[
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent
                ]
              )
            end
            attr_accessor :recent_events

            sig do
              params(
                blocked_events: Integer,
                flagged_events: Integer,
                recent_events:
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(blocked_events:, flagged_events:, recent_events:)
            end

            sig do
              override.returns(
                {
                  blocked_events: Integer,
                  flagged_events: Integer,
                  recent_events:
                    T::Array[
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent
                    ]
                }
              )
            end
            def to_hash
            end

            class RecentEvent < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent,
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

              sig do
                returns(T::Array[Telnyx::LlmTokenGateway::GuardrailFinding])
              end
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
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Metadata::Variants
                  ]
                )
              end
              attr_accessor :metadata

              sig { returns(String) }
              attr_accessor :model

              sig do
                returns(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome::TaggedSymbol
                )
              end
              attr_accessor :outcome

              sig { returns(Symbol) }
              attr_accessor :record_type

              sig { returns(String) }
              attr_accessor :request_id

              sig do
                returns(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage::TaggedSymbol
                )
              end
              attr_accessor :stage

              sig { returns(String) }
              attr_accessor :token_group_id

              sig { returns(String) }
              attr_accessor :token_key_id

              sig { returns(T.nilable(String)) }
              attr_accessor :token_user_id

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
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Metadata::Variants
                    ],
                  model: String,
                  outcome:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome::OrSymbol,
                  request_id: String,
                  stage:
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage::OrSymbol,
                  token_group_id: String,
                  token_key_id: String,
                  token_user_id: T.nilable(String),
                  record_type: Symbol
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
                record_type: :guardrail_event
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
                    findings:
                      T::Array[Telnyx::LlmTokenGateway::GuardrailFinding],
                    metadata:
                      T::Hash[
                        Symbol,
                        Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Metadata::Variants
                      ],
                    model: String,
                    outcome:
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome::TaggedSymbol,
                    record_type: Symbol,
                    request_id: String,
                    stage:
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage::TaggedSymbol,
                    token_group_id: String,
                    token_key_id: String,
                    token_user_id: T.nilable(String)
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
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Metadata::Variants
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
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                EVALUATED =
                  T.let(
                    :evaluated,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome::TaggedSymbol
                  )
                FLAGGED =
                  T.let(
                    :flagged,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome::TaggedSymbol
                  )
                BLOCKED =
                  T.let(
                    :blocked,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome::TaggedSymbol
                  )
                UNEVALUATED =
                  T.let(
                    :unevaluated,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome::TaggedSymbol
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
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PROMPT =
                  T.let(
                    :prompt,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage::TaggedSymbol
                  )
                RESPONSE =
                  T.let(
                    :response,
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Totals < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :cache_hits

            sig { returns(Integer) }
            attr_accessor :failed_requests

            sig { returns(Integer) }
            attr_accessor :input_tokens

            sig { returns(Integer) }
            attr_accessor :output_tokens

            sig { returns(Integer) }
            attr_accessor :partial_requests

            sig { returns(Integer) }
            attr_accessor :requests

            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            sig { returns(Float) }
            attr_accessor :reserved_spend

            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            sig { returns(Float) }
            attr_accessor :spend

            sig { returns(Integer) }
            attr_accessor :succeeded_requests

            sig { returns(Integer) }
            attr_accessor :unknown_requests

            sig do
              params(
                cache_hits: Integer,
                failed_requests: Integer,
                input_tokens: Integer,
                output_tokens: Integer,
                partial_requests: Integer,
                requests: Integer,
                reserved_spend: Float,
                spend: Float,
                succeeded_requests: Integer,
                unknown_requests: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              cache_hits:,
              failed_requests:,
              input_tokens:,
              output_tokens:,
              partial_requests:,
              requests:,
              # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
              # never binary float accounting.
              reserved_spend:,
              # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
              # never binary float accounting.
              spend:,
              succeeded_requests:,
              unknown_requests:
            )
            end

            sig do
              override.returns(
                {
                  cache_hits: Integer,
                  failed_requests: Integer,
                  input_tokens: Integer,
                  output_tokens: Integer,
                  partial_requests: Integer,
                  requests: Integer,
                  reserved_spend: Float,
                  spend: Float,
                  succeeded_requests: Integer,
                  unknown_requests: Integer
                }
              )
            end
            def to_hash
            end
          end
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Date) }
          attr_accessor :end_date

          # The metadata[<key>] filters applied to every section; {} when unfiltered.
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :metadata

          sig { returns(Date) }
          attr_accessor :start_date

          sig { returns(String) }
          attr_accessor :token_group_id

          sig do
            params(
              end_date: Date,
              metadata: T::Hash[Symbol, String],
              start_date: Date,
              token_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            end_date:,
            # The metadata[<key>] filters applied to every section; {} when unfiltered.
            metadata:,
            start_date:,
            token_group_id:
          )
          end

          sig do
            override.returns(
              {
                end_date: Date,
                metadata: T::Hash[Symbol, String],
                start_date: Date,
                token_group_id: String
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
