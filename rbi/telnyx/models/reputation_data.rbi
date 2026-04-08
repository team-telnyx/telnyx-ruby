# typed: strong

module Telnyx
  module Models
    class ReputationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ReputationData, Telnyx::Internal::AnyHash)
        end

      # Connection quality metric (0–100)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :connection_score

      # Engagement metric (0–100). Higher = more positive engagement
      sig { returns(T.nilable(Integer)) }
      attr_accessor :engagement_score

      # Timestamp of the last reputation data refresh
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_refreshed_at

      # Maturity metric (0–100). Higher = more established number
      sig { returns(T.nilable(Integer)) }
      attr_accessor :maturity_score

      # Sentiment metric (0–100). Higher = more positive sentiment
      sig { returns(T.nilable(Integer)) }
      attr_accessor :sentiment_score

      # Spam category classification (e.g., Telemarketing, Debt Collector)
      sig { returns(T.nilable(String)) }
      attr_accessor :spam_category

      # Overall spam risk level
      sig { returns(T.nilable(Telnyx::ReputationData::SpamRisk::TaggedSymbol)) }
      attr_accessor :spam_risk

      # Reputation metrics
      sig do
        params(
          connection_score: T.nilable(Integer),
          engagement_score: T.nilable(Integer),
          last_refreshed_at: T.nilable(Time),
          maturity_score: T.nilable(Integer),
          sentiment_score: T.nilable(Integer),
          spam_category: T.nilable(String),
          spam_risk: T.nilable(Telnyx::ReputationData::SpamRisk::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Connection quality metric (0–100)
        connection_score: nil,
        # Engagement metric (0–100). Higher = more positive engagement
        engagement_score: nil,
        # Timestamp of the last reputation data refresh
        last_refreshed_at: nil,
        # Maturity metric (0–100). Higher = more established number
        maturity_score: nil,
        # Sentiment metric (0–100). Higher = more positive sentiment
        sentiment_score: nil,
        # Spam category classification (e.g., Telemarketing, Debt Collector)
        spam_category: nil,
        # Overall spam risk level
        spam_risk: nil
      )
      end

      sig do
        override.returns(
          {
            connection_score: T.nilable(Integer),
            engagement_score: T.nilable(Integer),
            last_refreshed_at: T.nilable(Time),
            maturity_score: T.nilable(Integer),
            sentiment_score: T.nilable(Integer),
            spam_category: T.nilable(String),
            spam_risk: T.nilable(Telnyx::ReputationData::SpamRisk::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      # Overall spam risk level
      module SpamRisk
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ReputationData::SpamRisk) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW = T.let(:low, Telnyx::ReputationData::SpamRisk::TaggedSymbol)
        MEDIUM = T.let(:medium, Telnyx::ReputationData::SpamRisk::TaggedSymbol)
        HIGH = T.let(:high, Telnyx::ReputationData::SpamRisk::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ReputationData::SpamRisk::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
