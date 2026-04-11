# typed: strong

module Telnyx
  module Models
    class PronunciationDictAliasItem < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PronunciationDictAliasItem, Telnyx::Internal::AnyHash)
        end

      # The replacement text that will be spoken instead.
      sig { returns(String) }
      attr_accessor :alias_

      # The text to match in the input. Case-insensitive matching is used during
      # synthesis.
      sig { returns(String) }
      attr_accessor :text

      # The item type.
      sig { returns(Telnyx::PronunciationDictAliasItem::Type::OrSymbol) }
      attr_accessor :type

      # An alias pronunciation item. When the `text` value is found in input, it is
      # replaced with the `alias` before speech synthesis.
      sig do
        params(
          alias_: String,
          text: String,
          type: Telnyx::PronunciationDictAliasItem::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The replacement text that will be spoken instead.
        alias_:,
        # The text to match in the input. Case-insensitive matching is used during
        # synthesis.
        text:,
        # The item type.
        type:
      )
      end

      sig do
        override.returns(
          {
            alias_: String,
            text: String,
            type: Telnyx::PronunciationDictAliasItem::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      # The item type.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PronunciationDictAliasItem::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALIAS =
          T.let(:alias, Telnyx::PronunciationDictAliasItem::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PronunciationDictAliasItem::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
