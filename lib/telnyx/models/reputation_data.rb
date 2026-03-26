# frozen_string_literal: true

module Telnyx
  module Models
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
      #   @return [Symbol, Telnyx::Models::ReputationData::SpamRisk, nil]
      optional :spam_risk, enum: -> { Telnyx::ReputationData::SpamRisk }, nil?: true

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
      #   @param spam_risk [Symbol, Telnyx::Models::ReputationData::SpamRisk, nil] Overall spam risk level

      # Overall spam risk level
      #
      # @see Telnyx::Models::ReputationData#spam_risk
      module SpamRisk
        extend Telnyx::Internal::Type::Enum

        LOW = :low
        MEDIUM = :medium
        HIGH = :high

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
