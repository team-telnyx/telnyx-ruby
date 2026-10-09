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

          # One row per UTC day, including zero-activity days.
          sig do
            returns(
              T::Array[
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay
              ]
            )
          end
          attr_accessor :by_day

          # One row per model, ordered by request count descending then model name.
          sig do
            returns(
              T::Array[
                Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel
              ]
            )
          end
          attr_accessor :by_model

          # Complete guardrail event counts and bounded recent findings for the same group
          # and range.
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

          # Metrics for all matching requests.
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
          def self.new(
            # One row per UTC day, including zero-activity days.
            by_day:,
            # One row per model, ordered by request count descending then model name.
            by_model:,
            # Complete guardrail event counts and bounded recent findings for the same group
            # and range.
            guardrails:,
            # Metrics for all matching requests.
            totals:
          )
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

            # Requests served from the gateway cache.
            sig { returns(Integer) }
            attr_accessor :cache_hits

            # UTC day.
            sig { returns(Date) }
            attr_accessor :date

            # Requests classified as failed.
            sig { returns(Integer) }
            attr_accessor :failed_requests

            # Independently known input tokens across attempts, including corrected usage.
            sig { returns(Integer) }
            attr_accessor :input_tokens

            # Independently known output tokens across attempts, including corrected usage.
            sig { returns(Integer) }
            attr_accessor :output_tokens

            # Requests classified as partial after streaming began.
            sig { returns(Integer) }
            attr_accessor :partial_requests

            # Number of matching requests.
            sig { returns(Integer) }
            attr_accessor :requests

            # Unresolved budget reservations in USD.
            sig { returns(Float) }
            attr_accessor :reserved_spend

            # Sum of known reference/enforcement cost in USD.
            sig { returns(Float) }
            attr_accessor :spend

            # Requests classified as succeeded.
            sig { returns(Integer) }
            attr_accessor :succeeded_requests

            # Requests whose cost remains unresolved; unknown cost is excluded from spend.
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
              # Requests served from the gateway cache.
              cache_hits:,
              # UTC day.
              date:,
              # Requests classified as failed.
              failed_requests:,
              # Independently known input tokens across attempts, including corrected usage.
              input_tokens:,
              # Independently known output tokens across attempts, including corrected usage.
              output_tokens:,
              # Requests classified as partial after streaming began.
              partial_requests:,
              # Number of matching requests.
              requests:,
              # Unresolved budget reservations in USD.
              reserved_spend:,
              # Sum of known reference/enforcement cost in USD.
              spend:,
              # Requests classified as succeeded.
              succeeded_requests:,
              # Requests whose cost remains unresolved; unknown cost is excluded from spend.
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

            # Requests served from the gateway cache.
            sig { returns(Integer) }
            attr_accessor :cache_hits

            # Requests classified as failed.
            sig { returns(Integer) }
            attr_accessor :failed_requests

            # Independently known input tokens across attempts, including corrected usage.
            sig { returns(Integer) }
            attr_accessor :input_tokens

            # Model identifier.
            sig { returns(String) }
            attr_accessor :model

            # Independently known output tokens across attempts, including corrected usage.
            sig { returns(Integer) }
            attr_accessor :output_tokens

            # Requests classified as partial after streaming began.
            sig { returns(Integer) }
            attr_accessor :partial_requests

            # Number of matching requests.
            sig { returns(Integer) }
            attr_accessor :requests

            # Unresolved budget reservations in USD.
            sig { returns(Float) }
            attr_accessor :reserved_spend

            # Sum of known reference/enforcement cost in USD.
            sig { returns(Float) }
            attr_accessor :spend

            # Requests classified as succeeded.
            sig { returns(Integer) }
            attr_accessor :succeeded_requests

            # Requests whose cost remains unresolved; unknown cost is excluded from spend.
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
              # Requests served from the gateway cache.
              cache_hits:,
              # Requests classified as failed.
              failed_requests:,
              # Independently known input tokens across attempts, including corrected usage.
              input_tokens:,
              # Model identifier.
              model:,
              # Independently known output tokens across attempts, including corrected usage.
              output_tokens:,
              # Requests classified as partial after streaming began.
              partial_requests:,
              # Number of matching requests.
              requests:,
              # Unresolved budget reservations in USD.
              reserved_spend:,
              # Sum of known reference/enforcement cost in USD.
              spend:,
              # Requests classified as succeeded.
              succeeded_requests:,
              # Requests whose cost remains unresolved; unknown cost is excluded from spend.
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

            # Total blocked guardrail events, not distinct requests.
            sig { returns(Integer) }
            attr_accessor :blocked_events

            # Total flagged guardrail events, not distinct requests.
            sig { returns(Integer) }
            attr_accessor :flagged_events

            # Up to 20 newest privacy-safe guardrail events, ordered by creation time
            # descending and event ID.
            sig do
              returns(
                T::Array[
                  Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent
                ]
              )
            end
            attr_accessor :recent_events

            # Complete guardrail event counts and bounded recent findings for the same group
            # and range.
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
            def self.new(
              # Total blocked guardrail events, not distinct requests.
              blocked_events:,
              # Total flagged guardrail events, not distinct requests.
              flagged_events:,
              # Up to 20 newest privacy-safe guardrail events, ordered by creation time
              # descending and event ID.
              recent_events:
            )
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
                returns(
                  T::Array[
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding
                  ]
                )
              end
              attr_accessor :findings

              # Model identifier.
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
                    T::Array[
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::OrHash
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
                # Model identifier.
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
                      T::Array[
                        Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding
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

              class Finding < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action::TaggedSymbol
                  )
                end
                attr_accessor :action

                sig { returns(String) }
                attr_accessor :code

                sig { returns(Integer) }
                attr_accessor :count

                sig do
                  returns(
                    Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector::TaggedSymbol
                  )
                end
                attr_accessor :detector

                sig do
                  params(
                    action:
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action::OrSymbol,
                    code: String,
                    count: Integer,
                    detector:
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(action:, code:, count:, detector:)
                end

                sig do
                  override.returns(
                    {
                      action:
                        Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action::TaggedSymbol,
                      code: String,
                      count: Integer,
                      detector:
                        Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                module Action
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  FLAG =
                    T.let(
                      :flag,
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action::TaggedSymbol
                    )
                  BLOCK =
                    T.let(
                      :block,
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                module Detector
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SECRETS =
                    T.let(
                      :secrets,
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector::TaggedSymbol
                    )
                  DLP =
                    T.let(
                      :dlp,
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector::TaggedSymbol
                    )
                  SAFETY =
                    T.let(
                      :safety,
                      Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
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

            # Requests served from the gateway cache.
            sig { returns(Integer) }
            attr_accessor :cache_hits

            # Requests classified as failed.
            sig { returns(Integer) }
            attr_accessor :failed_requests

            # Independently known input tokens across attempts, including corrected usage.
            sig { returns(Integer) }
            attr_accessor :input_tokens

            # Independently known output tokens across attempts, including corrected usage.
            sig { returns(Integer) }
            attr_accessor :output_tokens

            # Requests classified as partial after streaming began.
            sig { returns(Integer) }
            attr_accessor :partial_requests

            # Number of matching requests.
            sig { returns(Integer) }
            attr_accessor :requests

            # Unresolved budget reservations in USD.
            sig { returns(Float) }
            attr_accessor :reserved_spend

            # Sum of known reference/enforcement cost in USD.
            sig { returns(Float) }
            attr_accessor :spend

            # Requests classified as succeeded.
            sig { returns(Integer) }
            attr_accessor :succeeded_requests

            # Requests whose cost remains unresolved; unknown cost is excluded from spend.
            sig { returns(Integer) }
            attr_accessor :unknown_requests

            # Metrics for all matching requests.
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
              # Requests served from the gateway cache.
              cache_hits:,
              # Requests classified as failed.
              failed_requests:,
              # Independently known input tokens across attempts, including corrected usage.
              input_tokens:,
              # Independently known output tokens across attempts, including corrected usage.
              output_tokens:,
              # Requests classified as partial after streaming began.
              partial_requests:,
              # Number of matching requests.
              requests:,
              # Unresolved budget reservations in USD.
              reserved_spend:,
              # Sum of known reference/enforcement cost in USD.
              spend:,
              # Requests classified as succeeded.
              succeeded_requests:,
              # Requests whose cost remains unresolved; unknown cost is excluded from spend.
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

          sig { returns(Date) }
          attr_accessor :start_date

          sig { returns(String) }
          attr_accessor :token_group_id

          sig do
            params(
              end_date: Date,
              start_date: Date,
              token_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(end_date:, start_date:, token_group_id:)
          end

          sig do
            override.returns(
              { end_date: Date, start_date: Date, token_group_id: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
