# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::Usage#retrieve_summary
      class UsageRetrieveSummaryResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data]
        required :data, -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta]
        required :meta, -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data]
        #   @param meta [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta]

        # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute by_day
          #   One row per UTC day, including zero-activity days.
          #
          #   @return [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay>]
          required :by_day,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay] }

          # @!attribute by_model
          #   One row per model, ordered by request count descending then model name.
          #
          #   @return [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel>]
          required :by_model,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel] }

          # @!attribute guardrails
          #   Complete guardrail event counts and bounded recent findings for the same group
          #   and range.
          #
          #   @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails]
          required :guardrails,
                   -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails }

          # @!attribute totals
          #   Metrics for all matching requests.
          #
          #   @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals]
          required :totals, -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals }

          # @!method initialize(by_day:, by_model:, guardrails:, totals:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data} for more
          #   details.
          #
          #   @param by_day [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay>] One row per UTC day, including zero-activity days.
          #
          #   @param by_model [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel>] One row per model, ordered by request count descending then model name.
          #
          #   @param guardrails [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails] Complete guardrail event counts and bounded recent findings for the same group a
          #
          #   @param totals [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals] Metrics for all matching requests.

          class ByDay < Telnyx::Internal::Type::BaseModel
            # @!attribute cache_hits
            #   Requests served from the gateway cache.
            #
            #   @return [Integer]
            required :cache_hits, Integer

            # @!attribute date
            #   UTC day.
            #
            #   @return [Date]
            required :date, Date

            # @!attribute failed_requests
            #   Requests classified as failed.
            #
            #   @return [Integer]
            required :failed_requests, Integer

            # @!attribute input_tokens
            #   Independently known input tokens across attempts, including corrected usage.
            #
            #   @return [Integer]
            required :input_tokens, Integer

            # @!attribute output_tokens
            #   Independently known output tokens across attempts, including corrected usage.
            #
            #   @return [Integer]
            required :output_tokens, Integer

            # @!attribute partial_requests
            #   Requests classified as partial after streaming began.
            #
            #   @return [Integer]
            required :partial_requests, Integer

            # @!attribute requests
            #   Number of matching requests.
            #
            #   @return [Integer]
            required :requests, Integer

            # @!attribute reserved_spend
            #   Unresolved budget reservations in USD.
            #
            #   @return [Float]
            required :reserved_spend, Float

            # @!attribute spend
            #   Sum of known reference/enforcement cost in USD.
            #
            #   @return [Float]
            required :spend, Float

            # @!attribute succeeded_requests
            #   Requests classified as succeeded.
            #
            #   @return [Integer]
            required :succeeded_requests, Integer

            # @!attribute unknown_requests
            #   Requests whose cost remains unresolved; unknown cost is excluded from spend.
            #
            #   @return [Integer]
            required :unknown_requests, Integer

            # @!method initialize(cache_hits:, date:, failed_requests:, input_tokens:, output_tokens:, partial_requests:, requests:, reserved_spend:, spend:, succeeded_requests:, unknown_requests:)
            #   @param cache_hits [Integer] Requests served from the gateway cache.
            #
            #   @param date [Date] UTC day.
            #
            #   @param failed_requests [Integer] Requests classified as failed.
            #
            #   @param input_tokens [Integer] Independently known input tokens across attempts, including corrected usage.
            #
            #   @param output_tokens [Integer] Independently known output tokens across attempts, including corrected usage.
            #
            #   @param partial_requests [Integer] Requests classified as partial after streaming began.
            #
            #   @param requests [Integer] Number of matching requests.
            #
            #   @param reserved_spend [Float] Unresolved budget reservations in USD.
            #
            #   @param spend [Float] Sum of known reference/enforcement cost in USD.
            #
            #   @param succeeded_requests [Integer] Requests classified as succeeded.
            #
            #   @param unknown_requests [Integer] Requests whose cost remains unresolved; unknown cost is excluded from spend.
          end

          class ByModel < Telnyx::Internal::Type::BaseModel
            # @!attribute cache_hits
            #   Requests served from the gateway cache.
            #
            #   @return [Integer]
            required :cache_hits, Integer

            # @!attribute failed_requests
            #   Requests classified as failed.
            #
            #   @return [Integer]
            required :failed_requests, Integer

            # @!attribute input_tokens
            #   Independently known input tokens across attempts, including corrected usage.
            #
            #   @return [Integer]
            required :input_tokens, Integer

            # @!attribute model
            #   Model identifier.
            #
            #   @return [String]
            required :model, String

            # @!attribute output_tokens
            #   Independently known output tokens across attempts, including corrected usage.
            #
            #   @return [Integer]
            required :output_tokens, Integer

            # @!attribute partial_requests
            #   Requests classified as partial after streaming began.
            #
            #   @return [Integer]
            required :partial_requests, Integer

            # @!attribute requests
            #   Number of matching requests.
            #
            #   @return [Integer]
            required :requests, Integer

            # @!attribute reserved_spend
            #   Unresolved budget reservations in USD.
            #
            #   @return [Float]
            required :reserved_spend, Float

            # @!attribute spend
            #   Sum of known reference/enforcement cost in USD.
            #
            #   @return [Float]
            required :spend, Float

            # @!attribute succeeded_requests
            #   Requests classified as succeeded.
            #
            #   @return [Integer]
            required :succeeded_requests, Integer

            # @!attribute unknown_requests
            #   Requests whose cost remains unresolved; unknown cost is excluded from spend.
            #
            #   @return [Integer]
            required :unknown_requests, Integer

            # @!method initialize(cache_hits:, failed_requests:, input_tokens:, model:, output_tokens:, partial_requests:, requests:, reserved_spend:, spend:, succeeded_requests:, unknown_requests:)
            #   @param cache_hits [Integer] Requests served from the gateway cache.
            #
            #   @param failed_requests [Integer] Requests classified as failed.
            #
            #   @param input_tokens [Integer] Independently known input tokens across attempts, including corrected usage.
            #
            #   @param model [String] Model identifier.
            #
            #   @param output_tokens [Integer] Independently known output tokens across attempts, including corrected usage.
            #
            #   @param partial_requests [Integer] Requests classified as partial after streaming began.
            #
            #   @param requests [Integer] Number of matching requests.
            #
            #   @param reserved_spend [Float] Unresolved budget reservations in USD.
            #
            #   @param spend [Float] Sum of known reference/enforcement cost in USD.
            #
            #   @param succeeded_requests [Integer] Requests classified as succeeded.
            #
            #   @param unknown_requests [Integer] Requests whose cost remains unresolved; unknown cost is excluded from spend.
          end

          # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data#guardrails
          class Guardrails < Telnyx::Internal::Type::BaseModel
            # @!attribute blocked_events
            #   Total blocked guardrail events, not distinct requests.
            #
            #   @return [Integer]
            required :blocked_events, Integer

            # @!attribute flagged_events
            #   Total flagged guardrail events, not distinct requests.
            #
            #   @return [Integer]
            required :flagged_events, Integer

            # @!attribute recent_events
            #   Up to 20 newest privacy-safe guardrail events, ordered by creation time
            #   descending and event ID.
            #
            #   @return [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent>]
            required :recent_events,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent] }

            # @!method initialize(blocked_events:, flagged_events:, recent_events:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails}
            #   for more details.
            #
            #   Complete guardrail event counts and bounded recent findings for the same group
            #   and range.
            #
            #   @param blocked_events [Integer] Total blocked guardrail events, not distinct requests.
            #
            #   @param flagged_events [Integer] Total flagged guardrail events, not distinct requests.
            #
            #   @param recent_events [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent>] Up to 20 newest privacy-safe guardrail events, ordered by creation time descendi

            class RecentEvent < Telnyx::Internal::Type::BaseModel
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
              #   @return [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding>]
              required :findings,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding] }

              # @!attribute model
              #   Model identifier.
              #
              #   @return [String]
              required :model, String

              # @!attribute outcome
              #
              #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome]
              required :outcome,
                       enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome }

              # @!attribute record_type
              #
              #   @return [Symbol, :guardrail_event]
              required :record_type, const: :guardrail_event

              # @!attribute request_id
              #
              #   @return [String]
              required :request_id, String

              # @!attribute stage
              #
              #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage]
              required :stage,
                       enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage }

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

              # @!method initialize(id:, created_at:, end_user_id:, evaluation_input_tokens:, evaluation_output_tokens:, findings:, model:, outcome:, request_id:, stage:, token_group_id:, token_key_id:, token_user_id:, record_type: :guardrail_event)
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
              #   @param findings [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding>]
              #
              #   @param model [String] Model identifier.
              #
              #   @param outcome [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Outcome]
              #
              #   @param request_id [String]
              #
              #   @param stage [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Stage]
              #
              #   @param token_group_id [String]
              #
              #   @param token_key_id [String]
              #
              #   @param token_user_id [String, nil]
              #
              #   @param record_type [Symbol, :guardrail_event]

              class Finding < Telnyx::Internal::Type::BaseModel
                # @!attribute action
                #
                #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action]
                required :action,
                         enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action }

                # @!attribute code
                #
                #   @return [String]
                required :code, String

                # @!attribute count
                #
                #   @return [Integer]
                required :count, Integer

                # @!attribute detector
                #
                #   @return [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector]
                required :detector,
                         enum: -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector }

                # @!method initialize(action:, code:, count:, detector:)
                #   @param action [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Action]
                #   @param code [String]
                #   @param count [Integer]
                #   @param detector [Symbol, Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding::Detector]

                # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding#action
                module Action
                  extend Telnyx::Internal::Type::Enum

                  FLAG = :flag
                  BLOCK = :block

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Finding#detector
                module Detector
                  extend Telnyx::Internal::Type::Enum

                  SECRETS = :secrets
                  DLP = :dlp
                  SAFETY = :safety

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent#outcome
              module Outcome
                extend Telnyx::Internal::Type::Enum

                EVALUATED = :evaluated
                FLAGGED = :flagged
                BLOCKED = :blocked
                UNEVALUATED = :unevaluated

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent#stage
              module Stage
                extend Telnyx::Internal::Type::Enum

                PROMPT = :prompt
                RESPONSE = :response

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data#totals
          class Totals < Telnyx::Internal::Type::BaseModel
            # @!attribute cache_hits
            #   Requests served from the gateway cache.
            #
            #   @return [Integer]
            required :cache_hits, Integer

            # @!attribute failed_requests
            #   Requests classified as failed.
            #
            #   @return [Integer]
            required :failed_requests, Integer

            # @!attribute input_tokens
            #   Independently known input tokens across attempts, including corrected usage.
            #
            #   @return [Integer]
            required :input_tokens, Integer

            # @!attribute output_tokens
            #   Independently known output tokens across attempts, including corrected usage.
            #
            #   @return [Integer]
            required :output_tokens, Integer

            # @!attribute partial_requests
            #   Requests classified as partial after streaming began.
            #
            #   @return [Integer]
            required :partial_requests, Integer

            # @!attribute requests
            #   Number of matching requests.
            #
            #   @return [Integer]
            required :requests, Integer

            # @!attribute reserved_spend
            #   Unresolved budget reservations in USD.
            #
            #   @return [Float]
            required :reserved_spend, Float

            # @!attribute spend
            #   Sum of known reference/enforcement cost in USD.
            #
            #   @return [Float]
            required :spend, Float

            # @!attribute succeeded_requests
            #   Requests classified as succeeded.
            #
            #   @return [Integer]
            required :succeeded_requests, Integer

            # @!attribute unknown_requests
            #   Requests whose cost remains unresolved; unknown cost is excluded from spend.
            #
            #   @return [Integer]
            required :unknown_requests, Integer

            # @!method initialize(cache_hits:, failed_requests:, input_tokens:, output_tokens:, partial_requests:, requests:, reserved_spend:, spend:, succeeded_requests:, unknown_requests:)
            #   Metrics for all matching requests.
            #
            #   @param cache_hits [Integer] Requests served from the gateway cache.
            #
            #   @param failed_requests [Integer] Requests classified as failed.
            #
            #   @param input_tokens [Integer] Independently known input tokens across attempts, including corrected usage.
            #
            #   @param output_tokens [Integer] Independently known output tokens across attempts, including corrected usage.
            #
            #   @param partial_requests [Integer] Requests classified as partial after streaming began.
            #
            #   @param requests [Integer] Number of matching requests.
            #
            #   @param reserved_spend [Float] Unresolved budget reservations in USD.
            #
            #   @param spend [Float] Sum of known reference/enforcement cost in USD.
            #
            #   @param succeeded_requests [Integer] Requests classified as succeeded.
            #
            #   @param unknown_requests [Integer] Requests whose cost remains unresolved; unknown cost is excluded from spend.
          end
        end

        # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute end_date
          #
          #   @return [Date]
          required :end_date, Date

          # @!attribute start_date
          #
          #   @return [Date]
          required :start_date, Date

          # @!attribute token_group_id
          #
          #   @return [String]
          required :token_group_id, String

          # @!method initialize(end_date:, start_date:, token_group_id:)
          #   @param end_date [Date]
          #   @param start_date [Date]
          #   @param token_group_id [String]
        end
      end
    end
  end
end
