# typed: strong

module Telnyx
  module Models
    class PronunciationDictData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PronunciationDictData, Telnyx::Internal::AnyHash)
        end

      # Unique identifier for the pronunciation dictionary.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 timestamp with millisecond precision.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # List of pronunciation items (alias or phoneme type).
      sig do
        returns(
          T.nilable(T::Array[Telnyx::PronunciationDictData::Item::Variants])
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

      # Human-readable name for the dictionary. Must be unique within the organization.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Identifies the resource type.
      sig do
        returns(
          T.nilable(Telnyx::PronunciationDictData::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::PronunciationDictData::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # ISO 8601 timestamp with millisecond precision.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # Auto-incrementing version number. Increases by 1 on each update. Used for
      # optimistic concurrency control and cache invalidation.
      sig { returns(T.nilable(Integer)) }
      attr_reader :version

      sig { params(version: Integer).void }
      attr_writer :version

      # A pronunciation dictionary record.
      sig do
        params(
          id: String,
          created_at: Time,
          items:
            T::Array[
              T.any(
                Telnyx::PronunciationDictAliasItem::OrHash,
                Telnyx::PronunciationDictPhonemeItem::OrHash
              )
            ],
          name: String,
          record_type: Telnyx::PronunciationDictData::RecordType::OrSymbol,
          updated_at: Time,
          version: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the pronunciation dictionary.
        id: nil,
        # ISO 8601 timestamp with millisecond precision.
        created_at: nil,
        # List of pronunciation items (alias or phoneme type).
        items: nil,
        # Human-readable name for the dictionary. Must be unique within the organization.
        name: nil,
        # Identifies the resource type.
        record_type: nil,
        # ISO 8601 timestamp with millisecond precision.
        updated_at: nil,
        # Auto-incrementing version number. Increases by 1 on each update. Used for
        # optimistic concurrency control and cache invalidation.
        version: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            items: T::Array[Telnyx::PronunciationDictData::Item::Variants],
            name: String,
            record_type:
              Telnyx::PronunciationDictData::RecordType::TaggedSymbol,
            updated_at: Time,
            version: Integer
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
            T::Array[Telnyx::PronunciationDictData::Item::Variants]
          )
        end
        def self.variants
        end
      end

      # Identifies the resource type.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PronunciationDictData::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRONUNCIATION_DICT =
          T.let(
            :pronunciation_dict,
            Telnyx::PronunciationDictData::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PronunciationDictData::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
