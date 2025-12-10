# typed: strong

module Telnyx
  module Models
    # Vertical or industry segment of the brand or campaign.
    module Vertical
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Vertical) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REAL_ESTATE = T.let(:REAL_ESTATE, Telnyx::Vertical::TaggedSymbol)
      HEALTHCARE = T.let(:HEALTHCARE, Telnyx::Vertical::TaggedSymbol)
      ENERGY = T.let(:ENERGY, Telnyx::Vertical::TaggedSymbol)
      ENTERTAINMENT = T.let(:ENTERTAINMENT, Telnyx::Vertical::TaggedSymbol)
      RETAIL = T.let(:RETAIL, Telnyx::Vertical::TaggedSymbol)
      AGRICULTURE = T.let(:AGRICULTURE, Telnyx::Vertical::TaggedSymbol)
      INSURANCE = T.let(:INSURANCE, Telnyx::Vertical::TaggedSymbol)
      EDUCATION = T.let(:EDUCATION, Telnyx::Vertical::TaggedSymbol)
      HOSPITALITY = T.let(:HOSPITALITY, Telnyx::Vertical::TaggedSymbol)
      FINANCIAL = T.let(:FINANCIAL, Telnyx::Vertical::TaggedSymbol)
      GAMBLING = T.let(:GAMBLING, Telnyx::Vertical::TaggedSymbol)
      CONSTRUCTION = T.let(:CONSTRUCTION, Telnyx::Vertical::TaggedSymbol)
      NGO = T.let(:NGO, Telnyx::Vertical::TaggedSymbol)
      MANUFACTURING = T.let(:MANUFACTURING, Telnyx::Vertical::TaggedSymbol)
      GOVERNMENT = T.let(:GOVERNMENT, Telnyx::Vertical::TaggedSymbol)
      TECHNOLOGY = T.let(:TECHNOLOGY, Telnyx::Vertical::TaggedSymbol)
      COMMUNICATION = T.let(:COMMUNICATION, Telnyx::Vertical::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::Vertical::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
