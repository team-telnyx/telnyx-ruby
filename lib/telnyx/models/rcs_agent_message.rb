# frozen_string_literal: true

module Telnyx
  module Models
    class RcsAgentMessage < Telnyx::Internal::Type::BaseModel
      # @!attribute content_message
      #
      #   @return [Telnyx::Models::RcsAgentMessage::ContentMessage, nil]
      optional :content_message, -> { Telnyx::RcsAgentMessage::ContentMessage }

      # @!attribute event
      #   RCS Event to send to the recipient
      #
      #   @return [Telnyx::Models::RcsAgentMessage::Event, nil]
      optional :event, -> { Telnyx::RcsAgentMessage::Event }

      # @!attribute expire_time
      #   Timestamp in UTC of when this message is considered expired
      #
      #   @return [Time, nil]
      optional :expire_time, Time

      # @!attribute ttl
      #   Duration in seconds ending with 's'
      #
      #   @return [String, nil]
      optional :ttl, String

      # @!method initialize(content_message: nil, event: nil, expire_time: nil, ttl: nil)
      #   @param content_message [Telnyx::Models::RcsAgentMessage::ContentMessage]
      #
      #   @param event [Telnyx::Models::RcsAgentMessage::Event] RCS Event to send to the recipient
      #
      #   @param expire_time [Time] Timestamp in UTC of when this message is considered expired
      #
      #   @param ttl [String] Duration in seconds ending with 's'

      # @see Telnyx::Models::RcsAgentMessage#content_message
      class ContentMessage < Telnyx::Internal::Type::BaseModel
        # @!attribute content_info
        #
        #   @return [Telnyx::Models::RcsContentInfo, nil]
        optional :content_info, -> { Telnyx::RcsContentInfo }

        # @!attribute rich_card
        #
        #   @return [Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard, nil]
        optional :rich_card, -> { Telnyx::RcsAgentMessage::ContentMessage::RichCard }

        # @!attribute suggestions
        #   List of suggested actions and replies
        #
        #   @return [Array<Telnyx::Models::RcsSuggestion>, nil]
        optional :suggestions, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RcsSuggestion] }

        # @!attribute text
        #   Text (maximum 3072 characters)
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(content_info: nil, rich_card: nil, suggestions: nil, text: nil)
        #   @param content_info [Telnyx::Models::RcsContentInfo]
        #
        #   @param rich_card [Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard]
        #
        #   @param suggestions [Array<Telnyx::Models::RcsSuggestion>] List of suggested actions and replies
        #
        #   @param text [String] Text (maximum 3072 characters)

        # @see Telnyx::Models::RcsAgentMessage::ContentMessage#rich_card
        class RichCard < Telnyx::Internal::Type::BaseModel
          # @!attribute carousel_card
          #   Carousel of cards.
          #
          #   @return [Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::CarouselCard, nil]
          optional :carousel_card, -> { Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard }

          # @!attribute standalone_card
          #   Standalone card
          #
          #   @return [Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard, nil]
          optional :standalone_card, -> { Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard }

          # @!method initialize(carousel_card: nil, standalone_card: nil)
          #   @param carousel_card [Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::CarouselCard] Carousel of cards.
          #
          #   @param standalone_card [Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard] Standalone card

          # @see Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard#carousel_card
          class CarouselCard < Telnyx::Internal::Type::BaseModel
            # @!attribute card_contents
            #   The list of contents for each card in the carousel. A carousel can have a
            #   minimum of 2 cards and a maximum 10 cards.
            #
            #   @return [Array<Telnyx::Models::RcsCardContent>]
            required :card_contents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RcsCardContent] }

            # @!attribute card_width
            #   The width of the cards in the carousel.
            #
            #   @return [Symbol, Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth]
            required :card_width,
                     enum: -> { Telnyx::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth }

            # @!method initialize(card_contents:, card_width:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::CarouselCard} for
            #   more details.
            #
            #   Carousel of cards.
            #
            #   @param card_contents [Array<Telnyx::Models::RcsCardContent>] The list of contents for each card in the carousel. A carousel can have a minimu
            #
            #   @param card_width [Symbol, Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::CarouselCard::CardWidth] The width of the cards in the carousel.

            # The width of the cards in the carousel.
            #
            # @see Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::CarouselCard#card_width
            module CardWidth
              extend Telnyx::Internal::Type::Enum

              CARD_WIDTH_UNSPECIFIED = :CARD_WIDTH_UNSPECIFIED
              SMALL = :SMALL
              MEDIUM = :MEDIUM

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard#standalone_card
          class StandaloneCard < Telnyx::Internal::Type::BaseModel
            # @!attribute card_content
            #
            #   @return [Telnyx::Models::RcsCardContent]
            required :card_content, -> { Telnyx::RcsCardContent }

            # @!attribute card_orientation
            #   Orientation of the card.
            #
            #   @return [Symbol, Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation]
            required :card_orientation,
                     enum: -> { Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation }

            # @!attribute thumbnail_image_alignment
            #   Image preview alignment for standalone cards with horizontal layout.
            #
            #   @return [Symbol, Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment]
            required :thumbnail_image_alignment,
                     enum: -> { Telnyx::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment }

            # @!method initialize(card_content:, card_orientation:, thumbnail_image_alignment:)
            #   Standalone card
            #
            #   @param card_content [Telnyx::Models::RcsCardContent]
            #
            #   @param card_orientation [Symbol, Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::CardOrientation] Orientation of the card.
            #
            #   @param thumbnail_image_alignment [Symbol, Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard::ThumbnailImageAlignment] Image preview alignment for standalone cards with horizontal layout.

            # Orientation of the card.
            #
            # @see Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard#card_orientation
            module CardOrientation
              extend Telnyx::Internal::Type::Enum

              CARD_ORIENTATION_UNSPECIFIED = :CARD_ORIENTATION_UNSPECIFIED
              HORIZONTAL = :HORIZONTAL
              VERTICAL = :VERTICAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Image preview alignment for standalone cards with horizontal layout.
            #
            # @see Telnyx::Models::RcsAgentMessage::ContentMessage::RichCard::StandaloneCard#thumbnail_image_alignment
            module ThumbnailImageAlignment
              extend Telnyx::Internal::Type::Enum

              THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED = :THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED
              LEFT = :LEFT
              RIGHT = :RIGHT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end

      # @see Telnyx::Models::RcsAgentMessage#event
      class Event < Telnyx::Internal::Type::BaseModel
        # @!attribute event_type
        #
        #   @return [Symbol, Telnyx::Models::RcsAgentMessage::Event::EventType, nil]
        optional :event_type, enum: -> { Telnyx::RcsAgentMessage::Event::EventType }

        # @!method initialize(event_type: nil)
        #   RCS Event to send to the recipient
        #
        #   @param event_type [Symbol, Telnyx::Models::RcsAgentMessage::Event::EventType]

        # @see Telnyx::Models::RcsAgentMessage::Event#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          TYPE_UNSPECIFIED = :TYPE_UNSPECIFIED
          IS_TYPING = :IS_TYPING
          READ = :READ

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
