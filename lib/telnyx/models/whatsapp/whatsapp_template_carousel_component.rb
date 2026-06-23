# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      class WhatsappTemplateCarouselComponent < Telnyx::Internal::Type::BaseModel
        # @!attribute cards
        #   Array of card objects, each with its own components.
        #
        #   @return [Array<Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent::Card>]
        required :cards,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Card] }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent::Type]
        required :type, enum: -> { Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Type }

        # @!method initialize(cards:, type:)
        #   Carousel component for multi-card templates. Each card can contain its own
        #   header, body, and buttons.
        #
        #   @param cards [Array<Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent::Card>] Array of card objects, each with its own components.
        #
        #   @param type [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent::Type]

        class Card < Telnyx::Internal::Type::BaseModel
          # @!attribute components
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :components,
                   Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

          # @!method initialize(components: nil)
          #   @param components [Array<Hash{Symbol=>Object}>]
        end

        # @see Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent#type
        module Type
          extend Telnyx::Internal::Type::Enum

          CAROUSEL = :CAROUSEL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    WhatsappTemplateCarouselComponent = Whatsapp::WhatsappTemplateCarouselComponent
  end
end
