# typed: strong

module Telnyx
  module Models
    # A single pronunciation dictionary item. Use type 'alias' to replace matched text
    # with a spoken alias, or type 'phoneme' to specify exact pronunciation using IPA
    # notation.
    module PronunciationDictItem
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::PronunciationDictAliasItem,
            Telnyx::PronunciationDictPhonemeItem
          )
        end

      sig do
        override.returns(T::Array[Telnyx::PronunciationDictItem::Variants])
      end
      def self.variants
      end
    end
  end
end
