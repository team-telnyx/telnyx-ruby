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

      # @!attribute template
      #   Template message object. Provide either template_id or name + language to
      #   identify the template.
      #
      #   @return [Telnyx::Models::WhatsappMessageContent::Template, nil]
      optional :template, -> { Telnyx::WhatsappMessageContent::Template }

      # @!attribute text
      #   Text message content. Can only be sent within a 24-hour customer service window.
      #
      #   @return [Telnyx::Models::WhatsappMessageContent::Text, nil]
      optional :text, -> { Telnyx::WhatsappMessageContent::Text }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::WhatsappMessageContent::Type, nil]
      optional :type, enum: -> { Telnyx::WhatsappMessageContent::Type }

      # @!attribute video
      #
      #   @return [Telnyx::Models::WhatsappMedia, nil]
      optional :video, -> { Telnyx::WhatsappMedia }

      # @!method initialize(audio: nil, biz_opaque_callback_data: nil, contacts: nil, document: nil, image: nil, interactive: nil, location: nil, reaction: nil, sticker: nil, template: nil, text: nil, type: nil, video: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WhatsappMessageContent} for more details.
      #
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
      #   @param template [Telnyx::Models::WhatsappMessageContent::Template] Template message object. Provide either template_id or name + language to identi
      #
      #   @param text [Telnyx::Models::WhatsappMessageContent::Text] Text message content. Can only be sent within a 24-hour customer service window.
      #
      #   @param type [Symbol, Telnyx::Models::WhatsappMessageContent::Type]
      #
      #   @param video [Telnyx::Models::WhatsappMedia]

      # @see Telnyx::Models::WhatsappMessageContent#template
      class Template < Telnyx::Internal::Type::BaseModel
        # @!attribute components
        #   Template parameter values for header, body, and button components.
        #
        #   @return [Array<Telnyx::Models::WhatsappMessageContent::Template::Component>, nil]
        optional :components,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappMessageContent::Template::Component] }

        # @!attribute language
        #   Template language. Required unless template_id is provided.
        #
        #   @return [Telnyx::Models::WhatsappMessageContent::Template::Language, nil]
        optional :language, -> { Telnyx::WhatsappMessageContent::Template::Language }

        # @!attribute name
        #   Template name as registered with Meta. Required unless template_id is provided.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute template_id
        #   Telnyx template ID (the id field from template list/get responses). When
        #   provided, name and language are resolved automatically.
        #
        #   @return [String, nil]
        optional :template_id, String

        # @!method initialize(components: nil, language: nil, name: nil, template_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::WhatsappMessageContent::Template} for more details.
        #
        #   Template message object. Provide either template_id or name + language to
        #   identify the template.
        #
        #   @param components [Array<Telnyx::Models::WhatsappMessageContent::Template::Component>] Template parameter values for header, body, and button components.
        #
        #   @param language [Telnyx::Models::WhatsappMessageContent::Template::Language] Template language. Required unless template_id is provided.
        #
        #   @param name [String] Template name as registered with Meta. Required unless template_id is provided.
        #
        #   @param template_id [String] Telnyx template ID (the id field from template list/get responses). When provide

        class Component < Telnyx::Internal::Type::BaseModel
          # @!attribute index
          #   Button index (required for button components)
          #
          #   @return [Integer, nil]
          optional :index, Integer

          # @!attribute parameters
          #
          #   @return [Array<Telnyx::Models::WhatsappMessageContent::Template::Component::Parameter>, nil]
          optional :parameters,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappMessageContent::Template::Component::Parameter] }

          # @!attribute sub_type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageContent::Template::Component::SubType, nil]
          optional :sub_type, enum: -> { Telnyx::WhatsappMessageContent::Template::Component::SubType }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageContent::Template::Component::Type, nil]
          optional :type, enum: -> { Telnyx::WhatsappMessageContent::Template::Component::Type }

          # @!method initialize(index: nil, parameters: nil, sub_type: nil, type: nil)
          #   @param index [Integer] Button index (required for button components)
          #
          #   @param parameters [Array<Telnyx::Models::WhatsappMessageContent::Template::Component::Parameter>]
          #
          #   @param sub_type [Symbol, Telnyx::Models::WhatsappMessageContent::Template::Component::SubType]
          #
          #   @param type [Symbol, Telnyx::Models::WhatsappMessageContent::Template::Component::Type]

          class Parameter < Telnyx::Internal::Type::BaseModel
            # @!attribute text
            #
            #   @return [String, nil]
            optional :text, String

            # @!attribute type
            #
            #   @return [Symbol, Telnyx::Models::WhatsappMessageContent::Template::Component::Parameter::Type, nil]
            optional :type, enum: -> { Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type }

            # @!method initialize(text: nil, type: nil)
            #   @param text [String]
            #   @param type [Symbol, Telnyx::Models::WhatsappMessageContent::Template::Component::Parameter::Type]

            # @see Telnyx::Models::WhatsappMessageContent::Template::Component::Parameter#type
            module Type
              extend Telnyx::Internal::Type::Enum

              TEXT = :text
              IMAGE = :image
              VIDEO = :video
              DOCUMENT = :document
              CURRENCY = :currency
              DATE_TIME = :date_time

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::WhatsappMessageContent::Template::Component#sub_type
          module SubType
            extend Telnyx::Internal::Type::Enum

            QUICK_REPLY = :quick_reply
            URL = :url

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::WhatsappMessageContent::Template::Component#type
          module Type
            extend Telnyx::Internal::Type::Enum

            HEADER = :header
            BODY = :body
            BUTTON = :button

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::WhatsappMessageContent::Template#language
        class Language < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #   Language code (e.g. en_US)
          #
          #   @return [String]
          required :code, String

          # @!attribute policy
          #
          #   @return [String, nil]
          optional :policy, String

          # @!method initialize(code:, policy: nil)
          #   Template language. Required unless template_id is provided.
          #
          #   @param code [String] Language code (e.g. en_US)
          #
          #   @param policy [String]
        end
      end

      # @see Telnyx::Models::WhatsappMessageContent#text
      class Text < Telnyx::Internal::Type::BaseModel
        # @!attribute body
        #   The text message body.
        #
        #   @return [String]
        required :body, String

        # @!attribute preview_url
        #   Whether to show a URL preview in the message.
        #
        #   @return [Boolean, nil]
        optional :preview_url, Telnyx::Internal::Type::Boolean

        # @!method initialize(body:, preview_url: nil)
        #   Text message content. Can only be sent within a 24-hour customer service window.
        #
        #   @param body [String] The text message body.
        #
        #   @param preview_url [Boolean] Whether to show a URL preview in the message.
      end

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
        TEXT = :text

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
