# frozen_string_literal: true

module Telnyx
  module Models
    module Reputation
      # @see Telnyx::Resources::Reputation::Numbers#list
      class NumberListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   When the number was associated
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute enterprise_id
        #   ID of the associated enterprise
        #
        #   @return [String, nil]
        optional :enterprise_id, String

        # @!attribute phone_number
        #   Phone number in E.164 format
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute reputation_data
        #   Reputation metrics (null if not yet fetched)
        #
        #   @return [Telnyx::Models::Reputation::NumberListResponse::ReputationData::ReputationData, Object, nil]
        optional :reputation_data, union: -> { Telnyx::Models::Reputation::NumberListResponse::ReputationData }

        # @!attribute updated_at
        #   When the record was last updated
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id: nil, created_at: nil, enterprise_id: nil, phone_number: nil, reputation_data: nil, updated_at: nil)
        #   @param id [String] Unique identifier
        #
        #   @param created_at [Time] When the number was associated
        #
        #   @param enterprise_id [String] ID of the associated enterprise
        #
        #   @param phone_number [String] Phone number in E.164 format
        #
        #   @param reputation_data [Telnyx::Models::Reputation::NumberListResponse::ReputationData::ReputationData, Object, nil] Reputation metrics (null if not yet fetched)
        #
        #   @param updated_at [Time] When the record was last updated

        # Reputation metrics (null if not yet fetched)
        #
        # @see Telnyx::Models::Reputation::NumberListResponse#reputation_data
        module ReputationData
          extend Telnyx::Internal::Type::Union

          # Reputation metrics
          variant -> { Telnyx::Models::Reputation::NumberListResponse::ReputationData::ReputationData }

          variant Telnyx::Internal::Type::Unknown

          class ReputationData < Telnyx::Internal::Type::BaseModel
            # @!attribute connection_score
            #   Connection quality metric (0–100)
            #
            #   @return [Integer, nil]
            optional :connection_score, Integer, nil?: true

            # @!attribute engagement_score
            #   Engagement metric (0–100). Higher = more positive engagement
            #
            #   @return [Integer, nil]
            optional :engagement_score, Integer, nil?: true

            # @!attribute last_refreshed_at
            #   Timestamp of the last reputation data refresh
            #
            #   @return [Time, nil]
            optional :last_refreshed_at, Time, nil?: true

            # @!attribute maturity_score
            #   Maturity metric (0–100). Higher = more established number
            #
            #   @return [Integer, nil]
            optional :maturity_score, Integer, nil?: true

            # @!attribute sentiment_score
            #   Sentiment metric (0–100). Higher = more positive sentiment
            #
            #   @return [Integer, nil]
            optional :sentiment_score, Integer, nil?: true

            # @!attribute spam_category
            #   Spam category classification (e.g., Telemarketing, Debt Collector)
            #
            #   @return [String, nil]
            optional :spam_category, String, nil?: true

            # @!attribute spam_risk
            #   Overall spam risk level
            #
            #   @return [Symbol, Telnyx::Models::Reputation::NumberListResponse::ReputationData::ReputationData::SpamRisk, nil]
            optional :spam_risk,
                     enum: -> { Telnyx::Models::Reputation::NumberListResponse::ReputationData::ReputationData::SpamRisk },
                     nil?: true

            # @!method initialize(connection_score: nil, engagement_score: nil, last_refreshed_at: nil, maturity_score: nil, sentiment_score: nil, spam_category: nil, spam_risk: nil)
            #   Reputation metrics
            #
            #   @param connection_score [Integer, nil] Connection quality metric (0–100)
            #
            #   @param engagement_score [Integer, nil] Engagement metric (0–100). Higher = more positive engagement
            #
            #   @param last_refreshed_at [Time, nil] Timestamp of the last reputation data refresh
            #
            #   @param maturity_score [Integer, nil] Maturity metric (0–100). Higher = more established number
            #
            #   @param sentiment_score [Integer, nil] Sentiment metric (0–100). Higher = more positive sentiment
            #
            #   @param spam_category [String, nil] Spam category classification (e.g., Telemarketing, Debt Collector)
            #
            #   @param spam_risk [Symbol, Telnyx::Models::Reputation::NumberListResponse::ReputationData::ReputationData::SpamRisk, nil] Overall spam risk level

            # Overall spam risk level
            #
            # @see Telnyx::Models::Reputation::NumberListResponse::ReputationData::ReputationData#spam_risk
            module SpamRisk
              extend Telnyx::Internal::Type::Enum

              LOW = :low
              MEDIUM = :medium
              HIGH = :high

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Reputation::NumberListResponse::ReputationData::ReputationData, Object)]
        end
      end
    end
  end
end
