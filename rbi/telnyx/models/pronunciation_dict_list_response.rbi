# typed: strong

module Telnyx
  module Models
    class PronunciationDictListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PronunciationDictListResponse,
            Telnyx::Internal::AnyHash
          )
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
          T.nilable(
            T::Array[
              Telnyx::Models::PronunciationDictListResponse::Item::Variants
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
                Telnyx::Models::PronunciationDictListResponse::Item::Alias::OrHash,
                Telnyx::Models::PronunciationDictListResponse::Item::Phoneme::OrHash
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
          T.nilable(
            Telnyx::Models::PronunciationDictListResponse::RecordType::TaggedSymbol
          )
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type:
            Telnyx::Models::PronunciationDictListResponse::RecordType::OrSymbol
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
                Telnyx::Models::PronunciationDictListResponse::Item::Alias::OrHash,
                Telnyx::Models::PronunciationDictListResponse::Item::Phoneme::OrHash
              )
            ],
          name: String,
          record_type:
            Telnyx::Models::PronunciationDictListResponse::RecordType::OrSymbol,
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
            items:
              T::Array[
                Telnyx::Models::PronunciationDictListResponse::Item::Variants
              ],
            name: String,
            record_type:
              Telnyx::Models::PronunciationDictListResponse::RecordType::TaggedSymbol,
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
              Telnyx::Models::PronunciationDictListResponse::Item::Alias,
              Telnyx::Models::PronunciationDictListResponse::Item::Phoneme
            )
          end

        class Alias < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PronunciationDictListResponse::Item::Alias,
                Telnyx::Internal::AnyHash
              )
            end

          # The replacement text that will be spoken instead.
          sig { returns(String) }
          attr_accessor :alias_

          # The text to match in the input. Case-insensitive matching is used during
          # synthesis.
          sig { returns(String) }
          attr_accessor :text

          # The item type.
          sig { returns(Symbol) }
          attr_accessor :type

          # An alias pronunciation item. When the `text` value is found in input, it is
          # replaced with the `alias` before speech synthesis.
          sig do
            params(alias_: String, text: String, type: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(
            # The replacement text that will be spoken instead.
            alias_:,
            # The text to match in the input. Case-insensitive matching is used during
            # synthesis.
            text:,
            # The item type.
            type: :alias
          )
          end

          sig do
            override.returns({ alias_: String, text: String, type: Symbol })
          end
          def to_hash
          end
        end

        class Phoneme < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PronunciationDictListResponse::Item::Phoneme,
                Telnyx::Internal::AnyHash
              )
            end

          # The phonetic alphabet used for the phoneme notation.
          sig do
            returns(
              Telnyx::Models::PronunciationDictListResponse::Item::Phoneme::Alphabet::TaggedSymbol
            )
          end
          attr_accessor :alphabet

          # The phoneme notation representing the desired pronunciation.
          sig { returns(String) }
          attr_accessor :phoneme

          # The text to match in the input. Case-insensitive matching is used during
          # synthesis.
          sig { returns(String) }
          attr_accessor :text

          # The item type.
          sig { returns(Symbol) }
          attr_accessor :type

          # A phoneme pronunciation item. When the `text` value is found in input, it is
          # pronounced using the specified IPA phoneme notation.
          sig do
            params(
              alphabet:
                Telnyx::Models::PronunciationDictListResponse::Item::Phoneme::Alphabet::OrSymbol,
              phoneme: String,
              text: String,
              type: Symbol
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
            type: :phoneme
          )
          end

          sig do
            override.returns(
              {
                alphabet:
                  Telnyx::Models::PronunciationDictListResponse::Item::Phoneme::Alphabet::TaggedSymbol,
                phoneme: String,
                text: String,
                type: Symbol
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
                T.all(
                  Symbol,
                  Telnyx::Models::PronunciationDictListResponse::Item::Phoneme::Alphabet
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IPA =
              T.let(
                :ipa,
                Telnyx::Models::PronunciationDictListResponse::Item::Phoneme::Alphabet::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::PronunciationDictListResponse::Item::Phoneme::Alphabet::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::PronunciationDictListResponse::Item::Variants
            ]
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
            T.all(
              Symbol,
              Telnyx::Models::PronunciationDictListResponse::RecordType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRONUNCIATION_DICT =
          T.let(
            :pronunciation_dict,
            Telnyx::Models::PronunciationDictListResponse::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::PronunciationDictListResponse::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
