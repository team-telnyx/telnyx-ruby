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
          #
          #   @return [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay>]
          required :by_day,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay] }

          # @!attribute by_model
          #
          #   @return [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel>]
          required :by_model,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel] }

          # @!attribute guardrails
          #
          #   @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails]
          required :guardrails,
                   -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails }

          # @!attribute totals
          #
          #   @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals]
          required :totals, -> { Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals }

          # @!method initialize(by_day:, by_model:, guardrails:, totals:)
          #   @param by_day [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay>]
          #   @param by_model [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel>]
          #   @param guardrails [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails]
          #   @param totals [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals]

          class ByDay < Telnyx::Internal::Type::BaseModel
            # @!attribute cache_hits
            #
            #   @return [Integer]
            required :cache_hits, Integer

            # @!attribute date
            #
            #   @return [Date]
            required :date, Date

            # @!attribute failed_requests
            #
            #   @return [Integer]
            required :failed_requests, Integer

            # @!attribute input_tokens
            #
            #   @return [Integer]
            required :input_tokens, Integer

            # @!attribute output_tokens
            #
            #   @return [Integer]
            required :output_tokens, Integer

            # @!attribute partial_requests
            #
            #   @return [Integer]
            required :partial_requests, Integer

            # @!attribute requests
            #
            #   @return [Integer]
            required :requests, Integer

            # @!attribute reserved_spend
            #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            #   never binary float accounting.
            #
            #   @return [Float]
            required :reserved_spend, Float

            # @!attribute spend
            #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            #   never binary float accounting.
            #
            #   @return [Float]
            required :spend, Float

            # @!attribute succeeded_requests
            #
            #   @return [Integer]
            required :succeeded_requests, Integer

            # @!attribute unknown_requests
            #
            #   @return [Integer]
            required :unknown_requests, Integer

            # @!method initialize(cache_hits:, date:, failed_requests:, input_tokens:, output_tokens:, partial_requests:, requests:, reserved_spend:, spend:, succeeded_requests:, unknown_requests:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByDay} for
            #   more details.
            #
            #   @param cache_hits [Integer]
            #
            #   @param date [Date]
            #
            #   @param failed_requests [Integer]
            #
            #   @param input_tokens [Integer]
            #
            #   @param output_tokens [Integer]
            #
            #   @param partial_requests [Integer]
            #
            #   @param requests [Integer]
            #
            #   @param reserved_spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
            #
            #   @param spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
            #
            #   @param succeeded_requests [Integer]
            #
            #   @param unknown_requests [Integer]
          end

          class ByModel < Telnyx::Internal::Type::BaseModel
            # @!attribute cache_hits
            #
            #   @return [Integer]
            required :cache_hits, Integer

            # @!attribute failed_requests
            #
            #   @return [Integer]
            required :failed_requests, Integer

            # @!attribute input_tokens
            #
            #   @return [Integer]
            required :input_tokens, Integer

            # @!attribute model
            #
            #   @return [String]
            required :model, String

            # @!attribute output_tokens
            #
            #   @return [Integer]
            required :output_tokens, Integer

            # @!attribute partial_requests
            #
            #   @return [Integer]
            required :partial_requests, Integer

            # @!attribute requests
            #
            #   @return [Integer]
            required :requests, Integer

            # @!attribute reserved_spend
            #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            #   never binary float accounting.
            #
            #   @return [Float]
            required :reserved_spend, Float

            # @!attribute spend
            #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            #   never binary float accounting.
            #
            #   @return [Float]
            required :spend, Float

            # @!attribute succeeded_requests
            #
            #   @return [Integer]
            required :succeeded_requests, Integer

            # @!attribute unknown_requests
            #
            #   @return [Integer]
            required :unknown_requests, Integer

            # @!method initialize(cache_hits:, failed_requests:, input_tokens:, model:, output_tokens:, partial_requests:, requests:, reserved_spend:, spend:, succeeded_requests:, unknown_requests:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::ByModel}
            #   for more details.
            #
            #   @param cache_hits [Integer]
            #
            #   @param failed_requests [Integer]
            #
            #   @param input_tokens [Integer]
            #
            #   @param model [String]
            #
            #   @param output_tokens [Integer]
            #
            #   @param partial_requests [Integer]
            #
            #   @param requests [Integer]
            #
            #   @param reserved_spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
            #
            #   @param spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
            #
            #   @param succeeded_requests [Integer]
            #
            #   @param unknown_requests [Integer]
          end

          # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data#guardrails
          class Guardrails < Telnyx::Internal::Type::BaseModel
            # @!attribute blocked_events
            #
            #   @return [Integer]
            required :blocked_events, Integer

            # @!attribute flagged_events
            #
            #   @return [Integer]
            required :flagged_events, Integer

            # @!attribute recent_events
            #
            #   @return [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent>]
            required :recent_events,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent] }

            # @!method initialize(blocked_events:, flagged_events:, recent_events:)
            #   @param blocked_events [Integer]
            #   @param flagged_events [Integer]
            #   @param recent_events [Array<Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent>]

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
                       -> do
                         Telnyx::Internal::Type::HashOf[
                           union: Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent::Metadata
                         ]
                       end

              # @!attribute model
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

              # @!method initialize(id:, created_at:, end_user_id:, evaluation_input_tokens:, evaluation_output_tokens:, findings:, metadata:, model:, outcome:, request_id:, stage:, token_group_id:, token_key_id:, token_user_id:, record_type: :guardrail_event)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Guardrails::RecentEvent}
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

              module Metadata
                extend Telnyx::Internal::Type::Union

                variant String

                variant Integer

                variant Telnyx::Internal::Type::Boolean

                # @!method self.variants
                #   @return [Array(String, Integer, Boolean)]
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
            #
            #   @return [Integer]
            required :cache_hits, Integer

            # @!attribute failed_requests
            #
            #   @return [Integer]
            required :failed_requests, Integer

            # @!attribute input_tokens
            #
            #   @return [Integer]
            required :input_tokens, Integer

            # @!attribute output_tokens
            #
            #   @return [Integer]
            required :output_tokens, Integer

            # @!attribute partial_requests
            #
            #   @return [Integer]
            required :partial_requests, Integer

            # @!attribute requests
            #
            #   @return [Integer]
            required :requests, Integer

            # @!attribute reserved_spend
            #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            #   never binary float accounting.
            #
            #   @return [Float]
            required :reserved_spend, Float

            # @!attribute spend
            #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            #   never binary float accounting.
            #
            #   @return [Float]
            required :spend, Float

            # @!attribute succeeded_requests
            #
            #   @return [Integer]
            required :succeeded_requests, Integer

            # @!attribute unknown_requests
            #
            #   @return [Integer]
            required :unknown_requests, Integer

            # @!method initialize(cache_hits:, failed_requests:, input_tokens:, output_tokens:, partial_requests:, requests:, reserved_spend:, spend:, succeeded_requests:, unknown_requests:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data::Totals}
            #   for more details.
            #
            #   @param cache_hits [Integer]
            #
            #   @param failed_requests [Integer]
            #
            #   @param input_tokens [Integer]
            #
            #   @param output_tokens [Integer]
            #
            #   @param partial_requests [Integer]
            #
            #   @param requests [Integer]
            #
            #   @param reserved_spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
            #
            #   @param spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
            #
            #   @param succeeded_requests [Integer]
            #
            #   @param unknown_requests [Integer]
          end
        end

        # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute end_date
          #
          #   @return [Date]
          required :end_date, Date

          # @!attribute metadata
          #   The metadata[<key>] filters applied to every section; {} when unfiltered.
          #
          #   @return [Hash{Symbol=>String}]
          required :metadata, Telnyx::Internal::Type::HashOf[String]

          # @!attribute start_date
          #
          #   @return [Date]
          required :start_date, Date

          # @!attribute token_group_id
          #
          #   @return [String]
          required :token_group_id, String

          # @!method initialize(end_date:, metadata:, start_date:, token_group_id:)
          #   @param end_date [Date]
          #
          #   @param metadata [Hash{Symbol=>String}] The metadata[<key>] filters applied to every section; {} when unfiltered.
          #
          #   @param start_date [Date]
          #
          #   @param token_group_id [String]
        end
      end
    end
  end
end
