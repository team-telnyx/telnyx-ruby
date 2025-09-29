# typed: strong

module Telnyx
  module Models
    class RcsAgentMessage < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RcsAgentMessage, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::RcsAgentMessage::ContentMessage)) }
      attr_reader :content_message

      sig do
        params(
          content_message: Telnyx::RcsAgentMessage::ContentMessage::OrHash
        ).void
      end
      attr_writer :content_message

      # RCS Event to send to the recipient
      sig { returns(T.nilable(Telnyx::RcsAgentMessage::Event)) }
      attr_reader :event

      sig { params(event: Telnyx::RcsAgentMessage::Event::OrHash).void }
      attr_writer :event

      # Timestamp in UTC of when this message is considered expired
      sig { returns(T.nilable(Time)) }
      attr_reader :expire_time

      sig { params(expire_time: Time).void }
      attr_writer :expire_time

      # Duration in seconds ending with 's'
      sig { returns(T.nilable(String)) }
      attr_reader :ttl

      sig { params(ttl: String).void }
      attr_writer :ttl

      sig do
        params(
          content_message: Telnyx::RcsAgentMessage::ContentMessage::OrHash,
          event: Telnyx::RcsAgentMessage::Event::OrHash,
          expire_time: Time,
          ttl: String
        ).returns(T.attached_class)
      end
      def self.new(
        content_message: nil,
        # RCS Event to send to the recipient
        event: nil,
        # Timestamp in UTC of when this message is considered expired
        expire_time: nil,
        # Duration in seconds ending with 's'
        ttl: nil
      )
      end

      sig do
        override.returns(
          {
            content_message: Telnyx::RcsAgentMessage::ContentMessage,
            event: Telnyx::RcsAgentMessage::Event,
            expire_time: Time,
            ttl: String
          }
        )
      end
      def to_hash
      end

      class ContentMessage < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::RcsAgentMessage::ContentMessage,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::RcsContentInfo)) }
        attr_reader :content_info

        sig { params(content_info: Telnyx::RcsContentInfo::OrHash).void }
        attr_writer :content_info

        sig do
          returns(T.nilable(Telnyx::RcsAgentMessage::ContentMessage::RichCard))
        end
        attr_reader :rich_card

        sig do
          params(
            rich_card: Telnyx::RcsAgentMessage::ContentMessage::RichCard::OrHash
          ).void
        end
        attr_writer :rich_card

        # List of suggested actions and replies
        sig { returns(T.nilable(T::Array[Telnyx::RcsSuggestion])) }
        attr_reader :suggestions

        sig do
          params(suggestions: T::Array[Telnyx::RcsSuggestion::OrHash]).void
        end
        attr_writer :suggestions

        # Text (maximum 3072 characters)
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig do
          params(
            content_info: Telnyx::RcsContentInfo::OrHash,
            rich_card:
              Telnyx::RcsAgentMessage::ContentMessage::RichCard::OrHash,
            suggestions: T::Array[Telnyx::RcsSuggestion::OrHash],
            text: String
          ).returns(T.attached_class)
        end
        def self.new(
          content_info: nil,
          rich_card: nil,
          # List of suggested actions and replies
          suggestions: nil,
          # Text (maximum 3072 characters)
          text: nil
        )
        end

        sig do
          override.returns(
            {
              content_info: Telnyx::RcsContentInfo,
              rich_card: Telnyx::RcsAgentMessage::ContentMessage::RichCard,
              suggestions: T::Array[Telnyx::RcsSuggestion],
              text: String
            }
          )
        end
        def to_hash
        end

        class RichCard < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RcsAgentMessage::ContentMessage::RichCard,
                Telnyx::Internal::AnyHash
              )
            end

          # Carousel of cards.
          sig do
            returns(
              T.nilable(
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard
              )
            )
          end
          attr_reader :carousel_card

          sig do
            params(
              carousel_card:
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::OrHash
            ).void
          end
          attr_writer :carousel_card

          # Standalone card
          sig do
            returns(
              T.nilable(
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard
              )
            )
          end
          attr_reader :standalone_card

          sig do
            params(
              standalone_card:
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::OrHash
            ).void
          end
          attr_writer :standalone_card

          sig do
            params(
              carousel_card:
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::OrHash,
              standalone_card:
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Carousel of cards.
            carousel_card: nil,
            # Standalone card
            standalone_card: nil
          )
          end

          sig do
            override.returns(
              {
                carousel_card:
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard,
                standalone_card:
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard
              }
            )
          end
          def to_hash
          end

          class CarouselCard < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard,
                  Telnyx::Internal::AnyHash
                )
              end

            # The list of contents for each card in the carousel. A carousel can have a
            # minimum of 2 cards and a maximum 10 cards.
            sig { returns(T::Array[Telnyx::RcsCardContent]) }
            attr_accessor :card_contents

            # The width of the cards in the carousel.
            sig do
              returns(
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth::OrSymbol
              )
            end
            attr_accessor :card_width

            # Carousel of cards.
            sig do
              params(
                card_contents: T::Array[Telnyx::RcsCardContent::OrHash],
                card_width:
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The list of contents for each card in the carousel. A carousel can have a
              # minimum of 2 cards and a maximum 10 cards.
              card_contents:,
              # The width of the cards in the carousel.
              card_width:
            )
            end

            sig do
              override.returns(
                {
                  card_contents: T::Array[Telnyx::RcsCardContent],
                  card_width:
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth::OrSymbol
                }
              )
            end
            def to_hash
            end

            # The width of the cards in the carousel.
            module CardWidth
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CARD_WIDTH_UNSPECIFIED =
                T.let(
                  :CARD_WIDTH_UNSPECIFIED,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth::TaggedSymbol
                )
              SMALL =
                T.let(
                  :SMALL,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth::TaggedSymbol
                )
              MEDIUM =
                T.let(
                  :MEDIUM,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class StandaloneCard < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::RcsCardContent) }
            attr_reader :card_content

            sig { params(card_content: Telnyx::RcsCardContent::OrHash).void }
            attr_writer :card_content

            # Orientation of the card.
            sig do
              returns(
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation::OrSymbol
              )
            end
            attr_accessor :card_orientation

            # Image preview alignment for standalone cards with horizontal layout.
            sig do
              returns(
                Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment::OrSymbol
              )
            end
            attr_accessor :thumbnail_image_alignment

            # Standalone card
            sig do
              params(
                card_content: Telnyx::RcsCardContent::OrHash,
                card_orientation:
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation::OrSymbol,
                thumbnail_image_alignment:
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              card_content:,
              # Orientation of the card.
              card_orientation:,
              # Image preview alignment for standalone cards with horizontal layout.
              thumbnail_image_alignment:
            )
            end

            sig do
              override.returns(
                {
                  card_content: Telnyx::RcsCardContent,
                  card_orientation:
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation::OrSymbol,
                  thumbnail_image_alignment:
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Orientation of the card.
            module CardOrientation
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CARD_ORIENTATION_UNSPECIFIED =
                T.let(
                  :CARD_ORIENTATION_UNSPECIFIED,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation::TaggedSymbol
                )
              HORIZONTAL =
                T.let(
                  :HORIZONTAL,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation::TaggedSymbol
                )
              VERTICAL =
                T.let(
                  :VERTICAL,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Image preview alignment for standalone cards with horizontal layout.
            module ThumbnailImageAlignment
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED =
                T.let(
                  :THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment::TaggedSymbol
                )
              LEFT =
                T.let(
                  :LEFT,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment::TaggedSymbol
                )
              RIGHT =
                T.let(
                  :RIGHT,
                  Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end

      class Event < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::RcsAgentMessage::Event, Telnyx::Internal::AnyHash)
          end

        sig do
          returns(
            T.nilable(Telnyx::RcsAgentMessage::Event::EventType::OrSymbol)
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type: Telnyx::RcsAgentMessage::Event::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # RCS Event to send to the recipient
        sig do
          params(
            event_type: Telnyx::RcsAgentMessage::Event::EventType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(event_type: nil)
        end

        sig do
          override.returns(
            { event_type: Telnyx::RcsAgentMessage::Event::EventType::OrSymbol }
          )
        end
        def to_hash
        end

        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::RcsAgentMessage::Event::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TYPE_UNSPECIFIED =
            T.let(
              :TYPE_UNSPECIFIED,
              Telnyx::RcsAgentMessage::Event::EventType::TaggedSymbol
            )
          IS_TYPING =
            T.let(
              :IS_TYPING,
              Telnyx::RcsAgentMessage::Event::EventType::TaggedSymbol
            )
          READ =
            T.let(
              :READ,
              Telnyx::RcsAgentMessage::Event::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::RcsAgentMessage::Event::EventType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
