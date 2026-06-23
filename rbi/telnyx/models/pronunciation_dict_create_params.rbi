# typed: strong

module Telnyx
  module Models
    class PronunciationDictCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PronunciationDictCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # List of pronunciation items (alias or phoneme type). At least one item is
      # required.
      sig do
        returns(
          T::Array[
            T.any(
              Telnyx::PronunciationDictAliasItem,
              Telnyx::PronunciationDictPhonemeItem
            )
          ]
        )
      end
      attr_accessor :items

      # Human-readable name. Must be unique within the organization.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
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
        # List of pronunciation items (alias or phoneme type). At least one item is
        # required.
        items:,
        # Human-readable name. Must be unique within the organization.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
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
    end
  end
end
