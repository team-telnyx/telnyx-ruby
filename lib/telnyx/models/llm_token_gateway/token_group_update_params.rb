# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::TokenGroups#update
      class TokenGroupUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute idempotency_key
        #
        #   @return [String]
        required :idempotency_key, String

        # @!attribute if_match
        #
        #   @return [String]
        required :if_match, String

        # @!attribute allowed_models
        #
        #   @return [Array<String>, nil]
        optional :allowed_models, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute blocked
        #
        #   @return [Boolean, nil]
        optional :blocked, Telnyx::Internal::Type::Boolean

        # @!attribute budget_duration
        #
        #   @return [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil]
        optional :budget_duration, enum: -> { Telnyx::LlmTokenGateway::BudgetDuration }, nil?: true

        # @!attribute cache_ttl
        #
        #   @return [Integer, nil]
        optional :cache_ttl, Integer, nil?: true

        # @!attribute fallbacks
        #   Per-group model fallbacks: primary alias -> ordered list of 1..3 other aliases.
        #   Every key and listed alias must be in allowed_models (a PATCH removing a
        #   referenced alias is 400); a chain never lists its own key; wildcards are
        #   rejected. Chains are one level deep (a step's own chain is not expanded).
        #   Fallback is attempted only for managed routes, only before the first provider
        #   event is forwarded, and only to steps the key may use; each attempt is reserved
        #   and recorded. {} and null both disable fallbacks.
        #
        #   @return [Hash{Symbol=>Array<String>}, nil]
        optional :fallbacks,
                 Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::ArrayOf[String]],
                 nil?: true

        # @!attribute guardrails
        #   Per-group guardrail policy. Missing actions default to ignore. profiles may be
        #   listed with both dlp actions ignore (staged, inactive) but a non-ignore dlp
        #   action requires at least one profile. streaming defaults to buffered when any
        #   response action is block and passthrough otherwise; passthrough with a response
        #   block is 400. Findings are codes and counts only; content is never stored. The
        #   stored form is echoed back canonicalised (all actions explicit, profiles
        #   sorted); {} is stored as an all-ignore policy, null disables.
        #
        #   @return [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails, nil]
        optional :guardrails, -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails }, nil?: true

        # @!attribute max_budget
        #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
        #   never binary float accounting.
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute max_parallel_requests
        #   Optional maximum concurrent reserved/dispatched cache misses across replicas.
        #   Null means no concurrency cap. Cache hits do not consume slots; unknown usage
        #   retains its budget hold without a slot.
        #
        #   @return [Integer, nil]
        optional :max_parallel_requests, Integer, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute provider_key_ids
        #
        #   @return [Array<String>, nil]
        optional :provider_key_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute retries
        #   Per-group same-route retries. max_attempts counts the first try of each step
        #   (the primary and each fallback) and is the ceiling for the x-ltg-max-attempts
        #   request header. A step is retried only when its attempt definitely did no
        #   provider work (connection failure before dispatch, or 429/529) before the first
        #   provider event; an uncertain failure (timeout, 408/500/502/503/504) moves to the
        #   next fallback step instead. max_attempts x (1 + the longest fallback chain) must
        #   not exceed 8, else 400. The n-th retry waits retry_delay_ms (constant),
        #   retry_delay_ms*n (linear) or retry_delay_ms*2^(n-1) (exponential), at most 5 s
        #   and never past the request deadline, then jittered uniformly down to half that
        #   value so concurrent retries spread out; a provider Retry-After of at most 5 s is
        #   honoured and a longer one moves to the next step. request_timeout_ms applies to
        #   streaming requests only: it bounds each attempt's time to its first provider
        #   event and never applies after it. Non-stream requests keep the per-attempt hop
        #   and idle bounds (their headers arrive only with the finished completion).
        #   retry_delay_ms and backoff are floors for the request knobs. Each planned
        #   attempt is reserved (at most 8 per request); unused reservation is released at
        #   settlement. Managed routes only. The stored form is echoed back with defaults
        #   filled in; null disables retries.
        #
        #   @return [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Retries, nil]
        optional :retries, -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries }, nil?: true

        # @!attribute rpm_limit
        #
        #   @return [Integer, nil]
        optional :rpm_limit, Integer, nil?: true

        # @!attribute tpm_limit
        #
        #   @return [Integer, nil]
        optional :tpm_limit, Integer, nil?: true

        # @!method initialize(id:, idempotency_key:, if_match:, allowed_models: nil, blocked: nil, budget_duration: nil, cache_ttl: nil, fallbacks: nil, guardrails: nil, max_budget: nil, max_parallel_requests: nil, name: nil, provider_key_ids: nil, retries: nil, rpm_limit: nil, tpm_limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param idempotency_key [String]
        #
        #   @param if_match [String]
        #
        #   @param allowed_models [Array<String>]
        #
        #   @param blocked [Boolean]
        #
        #   @param budget_duration [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil]
        #
        #   @param cache_ttl [Integer, nil]
        #
        #   @param fallbacks [Hash{Symbol=>Array<String>}, nil] Per-group model fallbacks: primary alias -> ordered list of 1..3 other aliases.
        #
        #   @param guardrails [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails, nil] Per-group guardrail policy. Missing actions default to ignore. profiles may be l
        #
        #   @param max_budget [Float, nil] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
        #
        #   @param max_parallel_requests [Integer, nil] Optional maximum concurrent reserved/dispatched cache misses across replicas. Nu
        #
        #   @param name [String]
        #
        #   @param provider_key_ids [Array<String>]
        #
        #   @param retries [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Retries, nil] Per-group same-route retries. max_attempts counts the first try of each step (th
        #
        #   @param rpm_limit [Integer, nil]
        #
        #   @param tpm_limit [Integer, nil]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Guardrails < Telnyx::Internal::Type::BaseModel
          # @!attribute dlp
          #
          #   @return [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp, nil]
          optional :dlp, -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp }

          # @!attribute secrets
          #
          #   @return [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets, nil]
          optional :secrets, -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets }

          # @!attribute streaming
          #
          #   @return [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming, nil]
          optional :streaming, enum: -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming }

          # @!method initialize(dlp: nil, secrets: nil, streaming: nil)
          #   Per-group guardrail policy. Missing actions default to ignore. profiles may be
          #   listed with both dlp actions ignore (staged, inactive) but a non-ignore dlp
          #   action requires at least one profile. streaming defaults to buffered when any
          #   response action is block and passthrough otherwise; passthrough with a response
          #   block is 400. Findings are codes and counts only; content is never stored. The
          #   stored form is echoed back canonicalised (all actions explicit, profiles
          #   sorted); {} is stored as an all-ignore policy, null disables.
          #
          #   @param dlp [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp]
          #   @param secrets [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets]
          #   @param streaming [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Streaming]

          # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails#dlp
          class Dlp < Telnyx::Internal::Type::BaseModel
            # @!attribute profiles
            #
            #   @return [Array<Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile>, nil]
            optional :profiles,
                     -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile] }

            # @!attribute prompt
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt, nil]
            optional :prompt, enum: -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt }

            # @!attribute response
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response, nil]
            optional :response,
                     enum: -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response }

            # @!method initialize(profiles: nil, prompt: nil, response: nil)
            #   @param profiles [Array<Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Profile>]
            #   @param prompt [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Prompt]
            #   @param response [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp::Response]

            module Profile
              extend Telnyx::Internal::Type::Enum

              FINANCIAL = :financial
              GOVERNMENT_ID = :government_id
              CONTACT = :contact

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp#prompt
            module Prompt
              extend Telnyx::Internal::Type::Enum

              IGNORE = :ignore
              FLAG = :flag
              BLOCK = :block

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Dlp#response
            module Response
              extend Telnyx::Internal::Type::Enum

              IGNORE = :ignore
              FLAG = :flag
              BLOCK = :block

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails#secrets
          class Secrets < Telnyx::Internal::Type::BaseModel
            # @!attribute prompt
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt, nil]
            optional :prompt,
                     enum: -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt }

            # @!attribute response
            #
            #   @return [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response, nil]
            optional :response,
                     enum: -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response }

            # @!method initialize(prompt: nil, response: nil)
            #   @param prompt [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Prompt]
            #   @param response [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets::Response]

            # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets#prompt
            module Prompt
              extend Telnyx::Internal::Type::Enum

              IGNORE = :ignore
              FLAG = :flag
              BLOCK = :block

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::Secrets#response
            module Response
              extend Telnyx::Internal::Type::Enum

              IGNORE = :ignore
              FLAG = :flag
              BLOCK = :block

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails#streaming
          module Streaming
            extend Telnyx::Internal::Type::Enum

            BUFFERED = :buffered
            PASSTHROUGH = :passthrough

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Retries < Telnyx::Internal::Type::BaseModel
          # @!attribute max_attempts
          #
          #   @return [Integer]
          required :max_attempts, Integer

          # @!attribute backoff
          #
          #   @return [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff, nil]
          optional :backoff, enum: -> { Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff }

          # @!attribute request_timeout_ms
          #
          #   @return [Integer, nil]
          optional :request_timeout_ms, Integer, nil?: true

          # @!attribute retry_delay_ms
          #
          #   @return [Integer, nil]
          optional :retry_delay_ms, Integer

          # @!method initialize(max_attempts:, backoff: nil, request_timeout_ms: nil, retry_delay_ms: nil)
          #   Per-group same-route retries. max_attempts counts the first try of each step
          #   (the primary and each fallback) and is the ceiling for the x-ltg-max-attempts
          #   request header. A step is retried only when its attempt definitely did no
          #   provider work (connection failure before dispatch, or 429/529) before the first
          #   provider event; an uncertain failure (timeout, 408/500/502/503/504) moves to the
          #   next fallback step instead. max_attempts x (1 + the longest fallback chain) must
          #   not exceed 8, else 400. The n-th retry waits retry_delay_ms (constant),
          #   retry_delay_ms*n (linear) or retry_delay_ms*2^(n-1) (exponential), at most 5 s
          #   and never past the request deadline, then jittered uniformly down to half that
          #   value so concurrent retries spread out; a provider Retry-After of at most 5 s is
          #   honoured and a longer one moves to the next step. request_timeout_ms applies to
          #   streaming requests only: it bounds each attempt's time to its first provider
          #   event and never applies after it. Non-stream requests keep the per-attempt hop
          #   and idle bounds (their headers arrive only with the finished completion).
          #   retry_delay_ms and backoff are floors for the request knobs. Each planned
          #   attempt is reserved (at most 8 per request); unused reservation is released at
          #   settlement. Managed routes only. The stored form is echoed back with defaults
          #   filled in; null disables retries.
          #
          #   @param max_attempts [Integer]
          #   @param backoff [Symbol, Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Retries::Backoff]
          #   @param request_timeout_ms [Integer, nil]
          #   @param retry_delay_ms [Integer]

          # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Retries#backoff
          module Backoff
            extend Telnyx::Internal::Type::Enum

            CONSTANT = :constant
            LINEAR = :linear
            EXPONENTIAL = :exponential

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
