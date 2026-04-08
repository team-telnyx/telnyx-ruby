# typed: strong

module Telnyx
  module Models
    class PronunciationDictUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PronunciationDictUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Updated list of pronunciation items (alias or phoneme type).
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                Telnyx::PronunciationDictAliasItem,
                Telnyx::PronunciationDictPhonemeItem
              )
            ]
          )
        )
      end
      attr_reader :items

      sig do
        params(
          items:
            T::Array[
              T.any(
                Telnyx::PronunciationDictAliasItem::OrHash,
                Telnyx::PronunciationDictPhonemeItem::OrHash
              )
            ]
        ).void
      end
      attr_writer :items

      # Updated dictionary name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          id: String,
          items:
            T::Array[
              T.any(
                Telnyx::PronunciationDictAliasItem::OrHash,
                Telnyx::PronunciationDictPhonemeItem::OrHash
              )
            ],
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Updated list of pronunciation items (alias or phoneme type).
        items: nil,
        # Updated dictionary name.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            items:
              T::Array[
                T.any(
                  Telnyx::PronunciationDictAliasItem,
                  Telnyx::PronunciationDictPhonemeItem
                )
              ],
            name: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # A single pronunciation dictionary item. Use type 'alias' to replace matched text
      # with a spoken alias, or type 'phoneme' to specify exact pronunciation using IPA
      # notation.
      module Item
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::PronunciationDictAliasItem,
              Telnyx::PronunciationDictPhonemeItem
            )
          end

        sig do
          override.returns(
            T::Array[Telnyx::PronunciationDictUpdateParams::Item::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
