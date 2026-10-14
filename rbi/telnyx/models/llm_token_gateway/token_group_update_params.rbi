# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class TokenGroupUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::TokenGroupUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :idempotency_key

        sig { returns(String) }
        attr_accessor :if_match

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_models

        sig { params(allowed_models: T::Array[String]).void }
        attr_writer :allowed_models

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :blocked

        sig { params(blocked: T::Boolean).void }
        attr_writer :blocked

        sig do
          returns(T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol))
        end
        attr_accessor :budget_duration

        sig { returns(T.nilable(Integer)) }
        attr_accessor :cache_ttl

        # Per-group model fallbacks: primary alias -> ordered list of 1..3 other aliases.
        # Every key and listed alias must be in allowed_models (a PATCH removing a
        # referenced alias is 400); a chain never lists its own key; wildcards are
        # rejected. Chains are one level deep (a step's own chain is not expanded).
        # Fallback is attempted only for managed routes, only before the first provider
        # event is forwarded, and only to steps the key may use; each attempt is reserved
        # and recorded. {} and null both disable fallbacks.
        sig { returns(T.nilable(T::Hash[Symbol, T::Array[String]])) }
        attr_accessor :fallbacks

        # Per-group guardrail policy. Missing actions default to ignore. profiles may be
        # listed with both dlp actions ignore (staged, inactive) but a non-ignore dlp
        # action requires at least one profile. streaming defaults to buffered when any
        # response action is block and passthrough otherwise; passthrough with a response
        # block is 400. Findings are codes and counts only; content is never stored. The
        # stored form is echoed back canonicalised (all actions explicit, profiles
        # sorted); {} is stored as an all-ignore policy, null disables.
        sig do
          returns(
            T.nilable(
              Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails
            )
          )
        end
        attr_reader :guardrails

        sig do
          params(
            guardrails:
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::OrHash
              )
          ).void
        end
        attr_writer :guardrails

        # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        # never binary float accounting.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        # Optional maximum concurrent reserved/dispatched cache misses across replicas.
        # Null means no concurrency cap. Cache hits do not consume slots; unknown usage
        # retains its budget hold without a slot.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_parallel_requests

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :provider_key_ids

        sig { params(provider_key_ids: T::Array[String]).void }
        attr_writer :provider_key_ids

        # Per-group same-route retries. max_attempts counts the first try of each step
        # (the primary and each fallback) and is the ceiling for the x-ltg-max-attempts
        # request header. A step is retried only when its attempt definitely did no
        # provider work (connection failure before dispatch, or 429/529) before the first
        # provider event; an uncertain failure (timeout, 408/500/502/503/504) moves to the
        # next fallback step instead. max_attempts x (1 + the longest fallback chain) must
        # not exceed 8, else 400. The n-th retry waits retry_delay_ms (constant),
        # retry_delay_ms*n (linear) or retry_delay_ms*2^(n-1) (exponential), at most 5 s
        # and never past the request deadline, then jittered uniformly down to half that
        # value so concurrent retries spread out; a provider Retry-After of at most 5 s is
        # honoured and a longer one moves to the next step. request_timeout_ms applies to
        # streaming requests only: it bounds each attempt's time to its first provider
        # event and never applies after it. Non-stream requests keep the per-attempt hop
        # and idle bounds (their headers arrive only with the finished completion).
        # retry_delay_ms and backoff are floors for the request knobs. Each planned
        # attempt is reserved (at most 8 per request); unused reservation is released at
        # settlement. Managed routes only. The stored form is echoed back with defaults
        # filled in; null disables retries.
        sig do
          returns(
            T.nilable(Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries)
          )
        end
        attr_reader :retries

        sig do
          params(
            retries:
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::OrHash
              )
          ).void
        end
        attr_writer :retries

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rpm_limit

        sig { returns(T.nilable(Integer)) }
        attr_accessor :tpm_limit

        sig do
          params(
            id: String,
            idempotency_key: String,
            if_match: String,
            allowed_models: T::Array[String],
            blocked: T::Boolean,
            budget_duration:
              T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
            cache_ttl: T.nilable(Integer),
            fallbacks: T.nilable(T::Hash[Symbol, T::Array[String]]),
            guardrails:
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::OrHash
              ),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            name: String,
            provider_key_ids: T::Array[String],
            retries:
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::OrHash
              ),
            rpm_limit: T.nilable(Integer),
            tpm_limit: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          idempotency_key:,
          if_match:,
          allowed_models: nil,
          blocked: nil,
          budget_duration: nil,
          cache_ttl: nil,
          # Per-group model fallbacks: primary alias -> ordered list of 1..3 other aliases.
          # Every key and listed alias must be in allowed_models (a PATCH removing a
          # referenced alias is 400); a chain never lists its own key; wildcards are
          # rejected. Chains are one level deep (a step's own chain is not expanded).
          # Fallback is attempted only for managed routes, only before the first provider
          # event is forwarded, and only to steps the key may use; each attempt is reserved
          # and recorded. {} and null both disable fallbacks.
          fallbacks: nil,
          # Per-group guardrail policy. Missing actions default to ignore. profiles may be
          # listed with both dlp actions ignore (staged, inactive) but a non-ignore dlp
          # action requires at least one profile. streaming defaults to buffered when any
          # response action is block and passthrough otherwise; passthrough with a response
          # block is 400. Findings are codes and counts only; content is never stored. The
          # stored form is echoed back canonicalised (all actions explicit, profiles
          # sorted); {} is stored as an all-ignore policy, null disables.
          guardrails: nil,
          # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          # never binary float accounting.
          max_budget: nil,
          # Optional maximum concurrent reserved/dispatched cache misses across replicas.
          # Null means no concurrency cap. Cache hits do not consume slots; unknown usage
          # retains its budget hold without a slot.
          max_parallel_requests: nil,
          name: nil,
          provider_key_ids: nil,
          # Per-group same-route retries. max_attempts counts the first try of each step
          # (the primary and each fallback) and is the ceiling for the x-ltg-max-attempts
          # request header. A step is retried only when its attempt definitely did no
          # provider work (connection failure before dispatch, or 429/529) before the first
          # provider event; an uncertain failure (timeout, 408/500/502/503/504) moves to the
          # next fallback step instead. max_attempts x (1 + the longest fallback chain) must
          # not exceed 8, else 400. The n-th retry waits retry_delay_ms (constant),
          # retry_delay_ms*n (linear) or retry_delay_ms*2^(n-1) (exponential), at most 5 s
          # and never past the request deadline, then jittered uniformly down to half that
          # value so concurrent retries spread out; a provider Retry-After of at most 5 s is
          # honoured and a longer one moves to the next step. request_timeout_ms applies to
          # streaming requests only: it bounds each attempt's time to its first provider
          # event and never applies after it. Non-stream requests keep the per-attempt hop
          # and idle bounds (their headers arrive only with the finished completion).
          # retry_delay_ms and backoff are floors for the request knobs. Each planned
          # attempt is reserved (at most 8 per request); unused reservation is released at
          # settlement. Managed routes only. The stored form is echoed back with defaults
          # filled in; null disables retries.
          retries: nil,
          rpm_limit: nil,
          tpm_limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              idempotency_key: String,
              if_match: String,
              allowed_models: T::Array[String],
              blocked: T::Boolean,
              budget_duration:
                T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
              cache_ttl: T.nilable(Integer),
              fallbacks: T.nilable(T::Hash[Symbol, T::Array[String]]),
              guardrails:
                T.nilable(
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails
                ),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              name: String,
              provider_key_ids: T::Array[String],
              retries:
                T.nilable(
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries
                ),
              rpm_limit: T.nilable(Integer),
              tpm_limit: T.nilable(Integer),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Guardrails < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp
              )
            )
          end
          attr_reader :dlp

          sig do
            params(
              dlp:
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::OrHash
            ).void
          end
          attr_writer :dlp

          sig do
            returns(
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets
              )
            )
          end
          attr_reader :secrets

          sig do
            params(
              secrets:
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::OrHash
            ).void
          end
          attr_writer :secrets

          sig do
            returns(
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming::OrSymbol
              )
            )
          end
          attr_reader :streaming

          sig do
            params(
              streaming:
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming::OrSymbol
            ).void
          end
          attr_writer :streaming

          # Per-group guardrail policy. Missing actions default to ignore. profiles may be
          # listed with both dlp actions ignore (staged, inactive) but a non-ignore dlp
          # action requires at least one profile. streaming defaults to buffered when any
          # response action is block and passthrough otherwise; passthrough with a response
          # block is 400. Findings are codes and counts only; content is never stored. The
          # stored form is echoed back canonicalised (all actions explicit, profiles
          # sorted); {} is stored as an all-ignore policy, null disables.
          sig do
            params(
              dlp:
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::OrHash,
              secrets:
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::OrHash,
              streaming:
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(dlp: nil, secrets: nil, streaming: nil)
          end

          sig do
            override.returns(
              {
                dlp:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp,
                secrets:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets,
                streaming:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Dlp < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile::OrSymbol
                  ]
                )
              )
            end
            attr_reader :profiles

            sig do
              params(
                profiles:
                  T::Array[
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile::OrSymbol
                  ]
              ).void
            end
            attr_writer :profiles

            sig do
              returns(
                T.nilable(
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt::OrSymbol
                )
              )
            end
            attr_reader :prompt

            sig do
              params(
                prompt:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt::OrSymbol
              ).void
            end
            attr_writer :prompt

            sig do
              returns(
                T.nilable(
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response::OrSymbol
                )
              )
            end
            attr_reader :response

            sig do
              params(
                response:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response::OrSymbol
              ).void
            end
            attr_writer :response

            sig do
              params(
                profiles:
                  T::Array[
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile::OrSymbol
                  ],
                prompt:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt::OrSymbol,
                response:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(profiles: nil, prompt: nil, response: nil)
            end

            sig do
              override.returns(
                {
                  profiles:
                    T::Array[
                      Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile::OrSymbol
                    ],
                  prompt:
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt::OrSymbol,
                  response:
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Profile
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FINANCIAL =
                T.let(
                  :financial,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile::TaggedSymbol
                )
              GOVERNMENT_ID =
                T.let(
                  :government_id,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile::TaggedSymbol
                )
              CONTACT =
                T.let(
                  :contact,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Prompt
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IGNORE =
                T.let(
                  :ignore,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt::TaggedSymbol
                )
              FLAG =
                T.let(
                  :flag,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt::TaggedSymbol
                )
              BLOCK =
                T.let(
                  :block,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Response
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IGNORE =
                T.let(
                  :ignore,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response::TaggedSymbol
                )
              FLAG =
                T.let(
                  :flag,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response::TaggedSymbol
                )
              BLOCK =
                T.let(
                  :block,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Secrets < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt::OrSymbol
                )
              )
            end
            attr_reader :prompt

            sig do
              params(
                prompt:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt::OrSymbol
              ).void
            end
            attr_writer :prompt

            sig do
              returns(
                T.nilable(
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response::OrSymbol
                )
              )
            end
            attr_reader :response

            sig do
              params(
                response:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response::OrSymbol
              ).void
            end
            attr_writer :response

            sig do
              params(
                prompt:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt::OrSymbol,
                response:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(prompt: nil, response: nil)
            end

            sig do
              override.returns(
                {
                  prompt:
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt::OrSymbol,
                  response:
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Prompt
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IGNORE =
                T.let(
                  :ignore,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt::TaggedSymbol
                )
              FLAG =
                T.let(
                  :flag,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt::TaggedSymbol
                )
              BLOCK =
                T.let(
                  :block,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Response
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IGNORE =
                T.let(
                  :ignore,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response::TaggedSymbol
                )
              FLAG =
                T.let(
                  :flag,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response::TaggedSymbol
                )
              BLOCK =
                T.let(
                  :block,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module Streaming
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUFFERED =
              T.let(
                :buffered,
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming::TaggedSymbol
              )
            PASSTHROUGH =
              T.let(
                :passthrough,
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Retries < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :max_attempts

          sig do
            returns(
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff::OrSymbol
              )
            )
          end
          attr_reader :backoff

          sig do
            params(
              backoff:
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff::OrSymbol
            ).void
          end
          attr_writer :backoff

          sig { returns(T.nilable(Integer)) }
          attr_accessor :request_timeout_ms

          sig { returns(T.nilable(Integer)) }
          attr_reader :retry_delay_ms

          sig { params(retry_delay_ms: Integer).void }
          attr_writer :retry_delay_ms

          # Per-group same-route retries. max_attempts counts the first try of each step
          # (the primary and each fallback) and is the ceiling for the x-ltg-max-attempts
          # request header. A step is retried only when its attempt definitely did no
          # provider work (connection failure before dispatch, or 429/529) before the first
          # provider event; an uncertain failure (timeout, 408/500/502/503/504) moves to the
          # next fallback step instead. max_attempts x (1 + the longest fallback chain) must
          # not exceed 8, else 400. The n-th retry waits retry_delay_ms (constant),
          # retry_delay_ms*n (linear) or retry_delay_ms*2^(n-1) (exponential), at most 5 s
          # and never past the request deadline, then jittered uniformly down to half that
          # value so concurrent retries spread out; a provider Retry-After of at most 5 s is
          # honoured and a longer one moves to the next step. request_timeout_ms applies to
          # streaming requests only: it bounds each attempt's time to its first provider
          # event and never applies after it. Non-stream requests keep the per-attempt hop
          # and idle bounds (their headers arrive only with the finished completion).
          # retry_delay_ms and backoff are floors for the request knobs. Each planned
          # attempt is reserved (at most 8 per request); unused reservation is released at
          # settlement. Managed routes only. The stored form is echoed back with defaults
          # filled in; null disables retries.
          sig do
            params(
              max_attempts: Integer,
              backoff:
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff::OrSymbol,
              request_timeout_ms: T.nilable(Integer),
              retry_delay_ms: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            max_attempts:,
            backoff: nil,
            request_timeout_ms: nil,
            retry_delay_ms: nil
          )
          end

          sig do
            override.returns(
              {
                max_attempts: Integer,
                backoff:
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff::OrSymbol,
                request_timeout_ms: T.nilable(Integer),
                retry_delay_ms: Integer
              }
            )
          end
          def to_hash
          end

          module Backoff
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONSTANT =
              T.let(
                :constant,
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff::TaggedSymbol
              )
            LINEAR =
              T.let(
                :linear,
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff::TaggedSymbol
              )
            EXPONENTIAL =
              T.let(
                :exponential,
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff::TaggedSymbol
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
end
