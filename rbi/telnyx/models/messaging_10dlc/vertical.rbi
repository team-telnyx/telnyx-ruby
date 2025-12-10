# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      # Vertical or industry segment of the brand or campaign.
      module Vertical
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Messaging10dlc::Vertical) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REAL_ESTATE =
          T.let(:REAL_ESTATE, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        HEALTHCARE =
          T.let(:HEALTHCARE, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        ENERGY = T.let(:ENERGY, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        ENTERTAINMENT =
          T.let(:ENTERTAINMENT, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        RETAIL = T.let(:RETAIL, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        AGRICULTURE =
          T.let(:AGRICULTURE, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        INSURANCE =
          T.let(:INSURANCE, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        EDUCATION =
          T.let(:EDUCATION, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        HOSPITALITY =
          T.let(:HOSPITALITY, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        FINANCIAL =
          T.let(:FINANCIAL, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        GAMBLING =
          T.let(:GAMBLING, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        CONSTRUCTION =
          T.let(:CONSTRUCTION, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        NGO = T.let(:NGO, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        MANUFACTURING =
          T.let(:MANUFACTURING, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        GOVERNMENT =
          T.let(:GOVERNMENT, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        TECHNOLOGY =
          T.let(:TECHNOLOGY, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)
        COMMUNICATION =
          T.let(:COMMUNICATION, Telnyx::Messaging10dlc::Vertical::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Messaging10dlc::Vertical::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
