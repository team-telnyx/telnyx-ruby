# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      class WhatsappTemplateHeaderComponent < Telnyx::Internal::Type::BaseModel
        # @!attribute file_format
        #   Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
        #   LOCATION.
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent::Format]
        required :file_format,
                 enum: -> { Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format },
                 api_name: :format

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent::Type]
        required :type, enum: -> { Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Type }

        # @!attribute example
        #   Sample values for header variables.
        #
        #   @return [Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent::Example, nil]
        optional :example, -> { Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Example }

        # @!attribute text
        #   Header text. Required when format is TEXT. Supports one variable ({{1}}).
        #   Variables cannot be at the start or end.
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(file_format:, type:, example: nil, text: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent} for more details.
        #
        #   Optional header displayed at the top of the message.
        #
        #   @param file_format [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent::Format] Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or LOC
        #
        #   @param type [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent::Type]
        #
        #   @param example [Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent::Example] Sample values for header variables.
        #
        #   @param text [String] Header text. Required when format is TEXT. Supports one variable ({{1}}). Variab

        # Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
        # LOCATION.
        #
        # @see Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent#file_format
        module Format
          extend Telnyx::Internal::Type::Enum

          TEXT = :TEXT
          IMAGE = :IMAGE
          VIDEO = :VIDEO
          DOCUMENT = :DOCUMENT
          LOCATION = :LOCATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent#type
        module Type
          extend Telnyx::Internal::Type::Enum

          HEADER = :HEADER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Whatsapp::WhatsappTemplateHeaderComponent#example
        class Example < Telnyx::Internal::Type::BaseModel
          # @!attribute header_handle
          #   Media handle for IMAGE, VIDEO, or DOCUMENT headers.
          #
          #   @return [Array<String>, nil]
          optional :header_handle, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute header_text
          #   Sample values for text header variables.
          #
          #   @return [Array<String>, nil]
          optional :header_text, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(header_handle: nil, header_text: nil)
          #   Sample values for header variables.
          #
          #   @param header_handle [Array<String>] Media handle for IMAGE, VIDEO, or DOCUMENT headers.
          #
          #   @param header_text [Array<String>] Sample values for text header variables.
        end
      end
    end

    WhatsappTemplateHeaderComponent = Whatsapp::WhatsappTemplateHeaderComponent
  end
end
