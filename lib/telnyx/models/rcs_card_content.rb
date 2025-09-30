# frozen_string_literal: true

module Telnyx
  module Models
    class RcsCardContent < Telnyx::Internal::Type::BaseModel
      # @!attribute description
      #   Description of the card (at most 2000 characters)
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute media
      #   A media file within a rich card.
      #
      #   @return [Telnyx::Models::RcsCardContent::Media, nil]
      optional :media, -> { Telnyx::RcsCardContent::Media }

      # @!attribute suggestions
      #   List of suggestions to include in the card. Maximum 10 suggestions.
      #
      #   @return [Array<Telnyx::Models::RcsSuggestion>, nil]
      optional :suggestions, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RcsSuggestion] }

      # @!attribute title
      #   Title of the card (at most 200 characters)
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(description: nil, media: nil, suggestions: nil, title: nil)
      #   @param description [String] Description of the card (at most 2000 characters)
      #
      #   @param media [Telnyx::Models::RcsCardContent::Media] A media file within a rich card.
      #
      #   @param suggestions [Array<Telnyx::Models::RcsSuggestion>] List of suggestions to include in the card. Maximum 10 suggestions.
      #
      #   @param title [String] Title of the card (at most 200 characters)

      # @see Telnyx::Models::RcsCardContent#media
      class Media < Telnyx::Internal::Type::BaseModel
        # @!attribute content_info
        #
        #   @return [Telnyx::Models::RcsContentInfo, nil]
        optional :content_info, -> { Telnyx::RcsContentInfo }

        # @!attribute height
        #   The height of the media within a rich card with a vertical layout. For a
        #   standalone card with horizontal layout, height is not customizable, and this
        #   field is ignored.
        #
        #   @return [Symbol, Telnyx::Models::RcsCardContent::Media::Height, nil]
        optional :height, enum: -> { Telnyx::RcsCardContent::Media::Height }

        # @!method initialize(content_info: nil, height: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::RcsCardContent::Media} for more details.
        #
        #   A media file within a rich card.
        #
        #   @param content_info [Telnyx::Models::RcsContentInfo]
        #
        #   @param height [Symbol, Telnyx::Models::RcsCardContent::Media::Height] The height of the media within a rich card with a vertical layout. For a standal

        # The height of the media within a rich card with a vertical layout. For a
        # standalone card with horizontal layout, height is not customizable, and this
        # field is ignored.
        #
        # @see Telnyx::Models::RcsCardContent::Media#height
        module Height
          extend Telnyx::Internal::Type::Enum

          HEIGHT_UNSPECIFIED = :HEIGHT_UNSPECIFIED
          SHORT = :SHORT
          MEDIUM = :MEDIUM
          TALL = :TALL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
