# frozen_string_literal: true

module Telnyx
  module Models
    class ReputationData < Telnyx::Internal::Type::BaseModel
      # @!attribute connection_score
      #
      #   @return [Integer, nil]
      optional :connection_score, Integer, nil?: true

      # @!attribute engagement_score
      #
      #   @return [Integer, nil]
      optional :engagement_score, Integer, nil?: true

      # @!attribute last_refreshed_at
      #
      #   @return [Time, nil]
      optional :last_refreshed_at, Time, nil?: true

      # @!attribute maturity_score
      #
      #   @return [Integer, nil]
      optional :maturity_score, Integer, nil?: true

      # @!attribute sentiment_score
      #
      #   @return [Integer, nil]
      optional :sentiment_score, Integer, nil?: true

      # @!attribute spam_category
      #   Category label from the reputation feed when the number is flagged.
      #
      #   @return [String, nil]
      optional :spam_category, String, nil?: true

      # @!attribute spam_risk
      #   Overall spam-risk classification.
      #
      #   @return [Symbol, Telnyx::Models::ReputationData::SpamRisk, nil]
      optional :spam_risk, enum: -> { Telnyx::ReputationData::SpamRisk }, nil?: true

      # @!method initialize(connection_score: nil, engagement_score: nil, last_refreshed_at: nil, maturity_score: nil, sentiment_score: nil, spam_category: nil, spam_risk: nil)
      #   Reputation snapshot for a phone number. Each metric is a 0–100 score;
      #   `spam_risk` is a coarse bucket. Field set may grow over time — read by key.
      #
      #   @param connection_score [Integer, nil]
      #
      #   @param engagement_score [Integer, nil]
      #
      #   @param last_refreshed_at [Time, nil]
      #
      #   @param maturity_score [Integer, nil]
      #
      #   @param sentiment_score [Integer, nil]
      #
      #   @param spam_category [String, nil] Category label from the reputation feed when the number is flagged.
      #
      #   @param spam_risk [Symbol, Telnyx::Models::ReputationData::SpamRisk, nil] Overall spam-risk classification.

      # Overall spam-risk classification.
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
