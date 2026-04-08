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
              Telnyx::PronunciationDictCreateParams::Item::Alias,
              Telnyx::PronunciationDictCreateParams::Item::Phoneme
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
                Telnyx::PronunciationDictCreateParams::Item::Alias::OrHash,
                Telnyx::PronunciationDictCreateParams::Item::Phoneme::OrHash
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
                  Telnyx::PronunciationDictCreateParams::Item::Alias,
                  Telnyx::PronunciationDictCreateParams::Item::Phoneme
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
              Telnyx::PronunciationDictCreateParams::Item::Alias,
              Telnyx::PronunciationDictCreateParams::Item::Phoneme
            )
          end

        class Alias < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PronunciationDictCreateParams::Item::Alias,
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
                Telnyx::PronunciationDictCreateParams::Item::Phoneme,
                Telnyx::Internal::AnyHash
              )
            end

          # The phonetic alphabet used for the phoneme notation.
          sig do
            returns(
              Telnyx::PronunciationDictCreateParams::Item::Phoneme::Alphabet::OrSymbol
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
                Telnyx::PronunciationDictCreateParams::Item::Phoneme::Alphabet::OrSymbol,
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
                  Telnyx::PronunciationDictCreateParams::Item::Phoneme::Alphabet::OrSymbol,
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
                  Telnyx::PronunciationDictCreateParams::Item::Phoneme::Alphabet
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IPA =
              T.let(
                :ipa,
                Telnyx::PronunciationDictCreateParams::Item::Phoneme::Alphabet::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PronunciationDictCreateParams::Item::Phoneme::Alphabet::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::PronunciationDictCreateParams::Item::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
