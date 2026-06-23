# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WhatsappMessageTemplates#update
    class WhatsappMessageTemplateUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute category
      #
      #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Category, nil]
      optional :category, enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Category }

      # @!attribute components
      #   Updated template components. Same structure as the create request.
      #
      #   @return [Array<Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent, Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent, Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent, Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent>, nil]
      optional :components,
               -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::WhatsappMessageTemplateUpdateParams::Component] }

      # @!method initialize(id:, category: nil, components: nil, request_options: {})
      #   @param id [String]
      #
      #   @param category [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Category]
      #
      #   @param components [Array<Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent, Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent, Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent, Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent>] Updated template components. Same structure as the create request.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Category
        extend Telnyx::Internal::Type::Enum

        MARKETING = :MARKETING
        UTILITY = :UTILITY
        AUTHENTICATION = :AUTHENTICATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # A template component. Additional Meta component types not listed here are also
      # accepted.
      module Component
        extend Telnyx::Internal::Type::Union

        discriminator :type

        # Optional header displayed at the top of the message.
        variant :HEADER, -> { Telnyx::Whatsapp::WhatsappTemplateHeaderComponent }

        # The main text content of the message. Supports multiple variable parameters ({{1}}, {{2}}, etc.). Variables cannot be at the start or end. Maximum 1024 characters.
        variant :BODY, -> { Telnyx::Whatsapp::WhatsappTemplateBodyComponent }

        # Optional footer displayed at the bottom of the message. Does not support variables.
        variant :FOOTER, -> { Telnyx::Whatsapp::WhatsappTemplateFooterComponent }

        # Optional interactive buttons. Maximum 3 buttons per template.
        variant :BUTTONS, -> { Telnyx::Whatsapp::WhatsappTemplateButtonsComponent }

        # Carousel component for multi-card templates. Each card can contain its own header, body, and buttons.
        variant :CAROUSEL, -> { Telnyx::Whatsapp::WhatsappTemplateCarouselComponent }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent, Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent, Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent, Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent)]
      end
    end
  end
end
