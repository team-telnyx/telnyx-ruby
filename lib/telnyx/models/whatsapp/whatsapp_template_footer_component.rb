# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      class WhatsappTemplateFooterComponent < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent::Type]
        required :type, enum: -> { Telnyx::Whatsapp::WhatsappTemplateFooterComponent::Type }

        # @!attribute code_expiration_minutes
        #   OTP code expiration time in minutes. Used in AUTHENTICATION template footers
        #   instead of free-form text.
        #
        #   @return [Integer, nil]
        optional :code_expiration_minutes, Integer

        # @!attribute text
        #   Footer text. Maximum 60 characters. For non-authentication templates.
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(type:, code_expiration_minutes: nil, text: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent} for more details.
        #
        #   Optional footer displayed at the bottom of the message. Does not support
        #   variables.
        #
        #   @param type [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent::Type]
        #
        #   @param code_expiration_minutes [Integer] OTP code expiration time in minutes. Used in AUTHENTICATION template footers ins
        #
        #   @param text [String] Footer text. Maximum 60 characters. For non-authentication templates.

        # @see Telnyx::Models::Whatsapp::WhatsappTemplateFooterComponent#type
        module Type
          extend Telnyx::Internal::Type::Enum

          FOOTER = :FOOTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    WhatsappTemplateFooterComponent = Whatsapp::WhatsappTemplateFooterComponent
  end
end
