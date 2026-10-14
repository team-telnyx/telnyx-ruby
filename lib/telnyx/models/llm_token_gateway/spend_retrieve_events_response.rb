# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::Spend#retrieve_events
      class SpendRetrieveEventsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data>]
        required :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta]
        required :meta, -> { Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data>]
        #   @param meta [Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute attempts
          #   Provider attempts begun for the request (fallbacks included); 0 for a cache hit.
          #   Token and cost totals sum every attempt.
          #
          #   @return [Integer]
          required :attempts, Integer

          # @!attribute biller
          #
          #   @return [Symbol, Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller]
          required :biller, enum: -> { Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller }

          # @!attribute cache_hit
          #
          #   @return [Boolean]
          required :cache_hit, Telnyx::Internal::Type::Boolean

          # @!attribute configuration_version
          #
          #   @return [Integer]
          required :configuration_version, Integer

          # @!attribute cost
          #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          #   never binary float accounting.
          #
          #   @return [Float, nil]
          required :cost, Float, nil?: true

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute end_user_id
          #
          #   @return [String, nil]
          required :end_user_id, String, nil?: true

          # @!attribute input_tokens
          #
          #   @return [Integer, nil]
          required :input_tokens, Integer, nil?: true

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
                   -> { Telnyx::Internal::Type::HashOf[union: Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Metadata] }

          # @!attribute model
          #   Public alias that served (the last attempt); rate_version, biller and
          #   provider_key_id follow it.
          #
          #   @return [String]
          required :model, String

          # @!attribute output_tokens
          #
          #   @return [Integer, nil]
          required :output_tokens, Integer, nil?: true

          # @!attribute provider_key_id
          #
          #   @return [String, nil]
          required :provider_key_id, String, nil?: true

          # @!attribute rate_version
          #
          #   @return [String]
          required :rate_version, String

          # @!attribute request_id
          #
          #   @return [String]
          required :request_id, String

          # @!attribute requested_model
          #   Public alias the caller requested; differs from model only when a group fallback
          #   served.
          #
          #   @return [String]
          required :requested_model, String

          # @!attribute reservation_micro_usd
          #
          #   @return [Integer]
          required :reservation_micro_usd, Integer

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status]
          required :status, enum: -> { Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status }

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

          # @!attribute usage_status
          #
          #   @return [Symbol, Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus]
          required :usage_status,
                   enum: -> { Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus }

          # @!method initialize(id:, attempts:, biller:, cache_hit:, configuration_version:, cost:, created_at:, end_user_id:, input_tokens:, metadata:, model:, output_tokens:, provider_key_id:, rate_version:, request_id:, requested_model:, reservation_micro_usd:, status:, token_group_id:, token_key_id:, token_user_id:, usage_status:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param attempts [Integer] Provider attempts begun for the request (fallbacks included); 0 for a cache hit.
          #
          #   @param biller [Symbol, Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller]
          #
          #   @param cache_hit [Boolean]
          #
          #   @param configuration_version [Integer]
          #
          #   @param cost [Float, nil] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
          #
          #   @param created_at [Time]
          #
          #   @param end_user_id [String, nil]
          #
          #   @param input_tokens [Integer, nil]
          #
          #   @param metadata [Hash{Symbol=>String, Integer, Boolean}] Customer request tags from the x-ltg-metadata header: up to 5 entries. Keys are
          #
          #   @param model [String] Public alias that served (the last attempt); rate_version, biller and provider_k
          #
          #   @param output_tokens [Integer, nil]
          #
          #   @param provider_key_id [String, nil]
          #
          #   @param rate_version [String]
          #
          #   @param request_id [String]
          #
          #   @param requested_model [String] Public alias the caller requested; differs from model only when a group fallback
          #
          #   @param reservation_micro_usd [Integer]
          #
          #   @param status [Symbol, Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status]
          #
          #   @param token_group_id [String]
          #
          #   @param token_key_id [String]
          #
          #   @param token_user_id [String, nil]
          #
          #   @param usage_status [Symbol, Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus]

          # @see Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data#biller
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

          # @see Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            SUCCEEDED = :succeeded
            FAILED = :failed
            PARTIAL = :partial
            UNKNOWN = :unknown

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data#usage_status
          module UsageStatus
            extend Telnyx::Internal::Type::Enum

            KNOWN = :known
            UNKNOWN = :unknown
            RECONCILED = :reconciled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute has_more
          #
          #   @return [Boolean]
          required :has_more, Telnyx::Internal::Type::Boolean

          # @!attribute page_number
          #
          #   @return [Integer]
          required :page_number, Integer

          # @!attribute page_size
          #
          #   @return [Integer]
          required :page_size, Integer

          # @!attribute snapshot
          #
          #   @return [String]
          required :snapshot, String

          # @!method initialize(has_more:, page_number:, page_size:, snapshot:)
          #   @param has_more [Boolean]
          #   @param page_number [Integer]
          #   @param page_size [Integer]
          #   @param snapshot [String]
        end
      end
    end
  end
end
