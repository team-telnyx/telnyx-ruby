# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappMessageContent < Telnyx::Internal::Type::BaseModel
      # @!attribute audio
      #
      #   @return [Telnyx::Models::WhatsappMedia, nil]
      optional :audio, -> { Telnyx::WhatsappMedia }

      # @!attribute biz_opaque_callback_data
      #   custom data to return with status update
      #
      #   @return [String, nil]
      optional :biz_opaque_callback_data, String

      # @!attribute contacts
      #
      #   @return [Array<Telnyx::Models::WhatsappContact>, nil]
      optional :contacts, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappContact] }

      # @!attribute document
      #
      #   @return [Telnyx::Models::WhatsappMedia, nil]
      optional :document, -> { Telnyx::WhatsappMedia }

      # @!attribute image
      #
      #   @return [Telnyx::Models::WhatsappMedia, nil]
      optional :image, -> { Telnyx::WhatsappMedia }

      # @!attribute interactive
      #
      #   @return [Telnyx::Models::WhatsappInteractive, nil]
      optional :interactive, -> { Telnyx::WhatsappInteractive }

      # @!attribute location
      #
      #   @return [Telnyx::Models::WhatsappLocation, nil]
      optional :location, -> { Telnyx::WhatsappLocation }

      # @!attribute reaction
      #
      #   @return [Telnyx::Models::WhatsappReaction, nil]
      optional :reaction, -> { Telnyx::WhatsappReaction }

      # @!attribute sticker
      #
      #   @return [Telnyx::Models::WhatsappMedia, nil]
      optional :sticker, -> { Telnyx::WhatsappMedia }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::WhatsappMessageContent::Type, nil]
      optional :type, enum: -> { Telnyx::WhatsappMessageContent::Type }

      # @!attribute video
      #
      #   @return [Telnyx::Models::WhatsappMedia, nil]
      optional :video, -> { Telnyx::WhatsappMedia }

      # @!method initialize(audio: nil, biz_opaque_callback_data: nil, contacts: nil, document: nil, image: nil, interactive: nil, location: nil, reaction: nil, sticker: nil, type: nil, video: nil)
      #   @param audio [Telnyx::Models::WhatsappMedia]
      #
      #   @param biz_opaque_callback_data [String] custom data to return with status update
      #
      #   @param contacts [Array<Telnyx::Models::WhatsappContact>]
      #
      #   @param document [Telnyx::Models::WhatsappMedia]
      #
      #   @param image [Telnyx::Models::WhatsappMedia]
      #
      #   @param interactive [Telnyx::Models::WhatsappInteractive]
      #
      #   @param location [Telnyx::Models::WhatsappLocation]
      #
      #   @param reaction [Telnyx::Models::WhatsappReaction]
      #
      #   @param sticker [Telnyx::Models::WhatsappMedia]
      #
      #   @param type [Symbol, Telnyx::Models::WhatsappMessageContent::Type]
      #
      #   @param video [Telnyx::Models::WhatsappMedia]

      # @see Telnyx::Models::WhatsappMessageContent#type
      module Type
        extend Telnyx::Internal::Type::Enum

        AUDIO = :audio
        DOCUMENT = :document
        IMAGE = :image
        STICKER = :sticker
        VIDEO = :video
        INTERACTIVE = :interactive
        LOCATION = :location
        TEMPLATE = :template
        REACTION = :reaction
        CONTACTS = :contacts

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
