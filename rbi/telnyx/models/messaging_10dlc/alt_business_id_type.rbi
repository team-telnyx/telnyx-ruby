# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      # An enumeration.
      module AltBusinessIDType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Messaging10dlc::AltBusinessIDType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(:NONE, Telnyx::Messaging10dlc::AltBusinessIDType::TaggedSymbol)
        DUNS =
          T.let(:DUNS, Telnyx::Messaging10dlc::AltBusinessIDType::TaggedSymbol)
        GIIN =
          T.let(:GIIN, Telnyx::Messaging10dlc::AltBusinessIDType::TaggedSymbol)
        LEI =
          T.let(:LEI, Telnyx::Messaging10dlc::AltBusinessIDType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Messaging10dlc::AltBusinessIDType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
