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
                Telnyx::PronunciationDictUpdateParams::Item::Alias,
                Telnyx::PronunciationDictUpdateParams::Item::Phoneme
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
                Telnyx::PronunciationDictUpdateParams::Item::Alias::OrHash,
                Telnyx::PronunciationDictUpdateParams::Item::Phoneme::OrHash
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
                Telnyx::PronunciationDictUpdateParams::Item::Alias::OrHash,
                Telnyx::PronunciationDictUpdateParams::Item::Phoneme::OrHash
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
                  Telnyx::PronunciationDictUpdateParams::Item::Alias,
                  Telnyx::PronunciationDictUpdateParams::Item::Phoneme
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
              Telnyx::PronunciationDictUpdateParams::Item::Alias,
              Telnyx::PronunciationDictUpdateParams::Item::Phoneme
            )
          end

        class Alias < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PronunciationDictUpdateParams::Item::Alias,
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
                Telnyx::PronunciationDictUpdateParams::Item::Phoneme,
                Telnyx::Internal::AnyHash
              )
            end

          # The phonetic alphabet used for the phoneme notation.
          sig do
            returns(
              Telnyx::PronunciationDictUpdateParams::Item::Phoneme::Alphabet::OrSymbol
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
                Telnyx::PronunciationDictUpdateParams::Item::Phoneme::Alphabet::OrSymbol,
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
                  Telnyx::PronunciationDictUpdateParams::Item::Phoneme::Alphabet::OrSymbol,
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
                  Telnyx::PronunciationDictUpdateParams::Item::Phoneme::Alphabet
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IPA =
              T.let(
                :ipa,
                Telnyx::PronunciationDictUpdateParams::Item::Phoneme::Alphabet::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PronunciationDictUpdateParams::Item::Phoneme::Alphabet::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
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
