# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::Templates#create
      class TemplateCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute category
        #   Template category: AUTHENTICATION, UTILITY, or MARKETING.
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::TemplateCreateParams::Category]
        required :category, enum: -> { Telnyx::Whatsapp::TemplateCreateParams::Category }

        # @!attribute components
        #   Template components defining message structure. Passed through to Meta Graph
        #   API. Templates with variables must include example values. Supports HEADER,
        #   BODY, FOOTER, BUTTONS, CAROUSEL and any future Meta component types.
        #
        #   @return [Array<Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent, Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent, Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent, Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent>]
        required :components,
                 -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Whatsapp::TemplateCreateParams::Component] }

        # @!attribute language
        #   Template language code (e.g. en_US, es, pt_BR).
        #
        #   @return [String]
        required :language, String

        # @!attribute name
        #   Template name. Lowercase letters, numbers, and underscores only.
        #
        #   @return [String]
        required :name, String

        # @!attribute waba_id
        #   The WhatsApp Business Account ID.
        #
        #   @return [String]
        required :waba_id, String

        # @!method initialize(category:, components:, language:, name:, waba_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Whatsapp::TemplateCreateParams} for more details.
        #
        #   @param category [Symbol, Telnyx::Models::Whatsapp::TemplateCreateParams::Category] Template category: AUTHENTICATION, UTILITY, or MARKETING.
        #
        #   @param components [Array<Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent, Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent, Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent, Telnyx::Models::Whatsapp::WhatsappTemplateCarouselComponent>] Template components defining message structure. Passed through to Meta Graph API
        #
        #   @param language [String] Template language code (e.g. en_US, es, pt_BR).
        #
        #   @param name [String] Template name. Lowercase letters, numbers, and underscores only.
        #
        #   @param waba_id [String] The WhatsApp Business Account ID.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Template category: AUTHENTICATION, UTILITY, or MARKETING.
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
end
