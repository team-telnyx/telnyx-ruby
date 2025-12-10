# typed: strong

module Telnyx
  module Models
    module Number10dlc
      # Vertical or industry segment of the brand or campaign.
      module Vertical
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Number10dlc::Vertical) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REAL_ESTATE =
          T.let(:REAL_ESTATE, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        HEALTHCARE =
          T.let(:HEALTHCARE, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        ENERGY = T.let(:ENERGY, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        ENTERTAINMENT =
          T.let(:ENTERTAINMENT, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        RETAIL = T.let(:RETAIL, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        AGRICULTURE =
          T.let(:AGRICULTURE, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        INSURANCE =
          T.let(:INSURANCE, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        EDUCATION =
          T.let(:EDUCATION, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        HOSPITALITY =
          T.let(:HOSPITALITY, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        FINANCIAL =
          T.let(:FINANCIAL, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        GAMBLING = T.let(:GAMBLING, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        CONSTRUCTION =
          T.let(:CONSTRUCTION, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        NGO = T.let(:NGO, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        MANUFACTURING =
          T.let(:MANUFACTURING, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        GOVERNMENT =
          T.let(:GOVERNMENT, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        TECHNOLOGY =
          T.let(:TECHNOLOGY, Telnyx::Number10dlc::Vertical::TaggedSymbol)
        COMMUNICATION =
          T.let(:COMMUNICATION, Telnyx::Number10dlc::Vertical::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Number10dlc::Vertical::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
