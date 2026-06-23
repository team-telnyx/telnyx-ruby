# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      class WhatsappTemplateBodyComponent < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent::Type]
        required :type, enum: -> { Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Type }

        # @!attribute example
        #   Sample values for body variables. Required when body text contains parameters.
        #
        #   @return [Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent::Example, nil]
        optional :example, -> { Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Example }

        # @!attribute text
        #   Body text content. Use {{1}}, {{2}}, etc. for variable placeholders. Required
        #   for MARKETING and UTILITY templates. Optional for AUTHENTICATION templates where
        #   Meta provides the built-in OTP body.
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(type:, example: nil, text: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent} for more details.
        #
        #   The main text content of the message. Supports multiple variable parameters
        #   ({{1}}, {{2}}, etc.). Variables cannot be at the start or end. Maximum 1024
        #   characters.
        #
        #   @param type [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent::Type]
        #
        #   @param example [Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent::Example] Sample values for body variables. Required when body text contains parameters.
        #
        #   @param text [String] Body text content. Use {{1}}, {{2}}, etc. for variable placeholders. Required fo

        # @see Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent#type
        module Type
          extend Telnyx::Internal::Type::Enum

          BODY = :BODY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Whatsapp::WhatsappTemplateBodyComponent#example
        class Example < Telnyx::Internal::Type::BaseModel
          # @!attribute body_text
          #   Array containing one array of sample values, one per variable in order.
          #
          #   @return [Array<Array<String>>, nil]
          optional :body_text, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::ArrayOf[String]]

          # @!method initialize(body_text: nil)
          #   Sample values for body variables. Required when body text contains parameters.
          #
          #   @param body_text [Array<Array<String>>] Array containing one array of sample values, one per variable in order.
        end
      end
    end

    WhatsappTemplateBodyComponent = Whatsapp::WhatsappTemplateBodyComponent
  end
end
