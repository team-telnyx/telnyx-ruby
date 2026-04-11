# typed: strong

module Telnyx
  module Models
    class PronunciationDictPhonemeItem < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PronunciationDictPhonemeItem, Telnyx::Internal::AnyHash)
        end

      # The phonetic alphabet used for the phoneme notation.
      sig { returns(Telnyx::PronunciationDictPhonemeItem::Alphabet::OrSymbol) }
      attr_accessor :alphabet

      # The phoneme notation representing the desired pronunciation.
      sig { returns(String) }
      attr_accessor :phoneme

      # The text to match in the input. Case-insensitive matching is used during
      # synthesis.
      sig { returns(String) }
      attr_accessor :text

      # The item type.
      sig { returns(Telnyx::PronunciationDictPhonemeItem::Type::OrSymbol) }
      attr_accessor :type

      # A phoneme pronunciation item. When the `text` value is found in input, it is
      # pronounced using the specified IPA phoneme notation.
      sig do
        params(
          alphabet: Telnyx::PronunciationDictPhonemeItem::Alphabet::OrSymbol,
          phoneme: String,
          text: String,
          type: Telnyx::PronunciationDictPhonemeItem::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The phonetic alphabet used for the phoneme notation.
        alphabet:,
        # The phoneme notation representing the desired pronunciation.
        phoneme:,
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
            alphabet: Telnyx::PronunciationDictPhonemeItem::Alphabet::OrSymbol,
            phoneme: String,
            text: String,
            type: Telnyx::PronunciationDictPhonemeItem::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      # The phonetic alphabet used for the phoneme notation.
      module Alphabet
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PronunciationDictPhonemeItem::Alphabet)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IPA =
          T.let(
            :ipa,
            Telnyx::PronunciationDictPhonemeItem::Alphabet::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PronunciationDictPhonemeItem::Alphabet::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The item type.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PronunciationDictPhonemeItem::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHONEME =
          T.let(
            :phoneme,
            Telnyx::PronunciationDictPhonemeItem::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PronunciationDictPhonemeItem::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
