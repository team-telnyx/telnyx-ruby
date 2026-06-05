# typed: strong

module Telnyx
  module Models
    class ReputationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ReputationData, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_accessor :connection_score

      sig { returns(T.nilable(Integer)) }
      attr_accessor :engagement_score

      sig { returns(T.nilable(Time)) }
      attr_accessor :last_refreshed_at

      sig { returns(T.nilable(Integer)) }
      attr_accessor :maturity_score

      sig { returns(T.nilable(Integer)) }
      attr_accessor :sentiment_score

      # Category label from the reputation feed when the number is flagged.
      sig { returns(T.nilable(String)) }
      attr_accessor :spam_category

      # Overall spam-risk classification.
      sig { returns(T.nilable(Telnyx::ReputationData::SpamRisk::TaggedSymbol)) }
      attr_accessor :spam_risk

      # Reputation snapshot for a phone number. Each metric is a 0–100 score;
      # `spam_risk` is a coarse bucket. Field set may grow over time — read by key.
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
        connection_score: nil,
        engagement_score: nil,
        last_refreshed_at: nil,
        maturity_score: nil,
        sentiment_score: nil,
        # Category label from the reputation feed when the number is flagged.
        spam_category: nil,
        # Overall spam-risk classification.
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

      # Overall spam-risk classification.
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
