# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#whatsapp
    class MessageWhatsappParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute from
      #   Phone number in +E.164 format associated with Whatsapp account
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   Recipient phone number in +E.164 format, or the business-scoped user ID (BSUID)
      #   of a WhatsApp user who hides their phone number, for example
      #   `US.13491208655302741918`. Authentication templates cannot be sent to a BSUID.
      #
      #   @return [String]
      required :to, String

      # @!attribute whatsapp_message
      #
      #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage]
      required :whatsapp_message, -> { Telnyx::MessageWhatsappParams::WhatsappMessage }

      # @!attribute messaging_profile_id
      #   Messaging profile ID - required if the 'from' number is not SMS-enabled
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute type
      #   Message type - must be set to "WHATSAPP"
      #
      #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::Type, nil]
      optional :type, enum: -> { Telnyx::MessageWhatsappParams::Type }

      # @!attribute webhook_url
      #   The URL where webhooks related to this message will be sent.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(from:, to:, whatsapp_message:, messaging_profile_id: nil, type: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessageWhatsappParams} for more details.
      #
      #   @param from [String] Phone number in +E.164 format associated with Whatsapp account
      #
      #   @param to [String] Recipient phone number in +E.164 format, or the business-scoped user ID (BSUID)
      #
      #   @param whatsapp_message [Telnyx::Models::MessageWhatsappParams::WhatsappMessage]
      #
      #   @param messaging_profile_id [String] Messaging profile ID - required if the 'from' number is not SMS-enabled
      #
      #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::Type] Message type - must be set to "WHATSAPP"
      #
      #   @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class WhatsappMessage < Telnyx::Internal::Type::BaseModel
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
        #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact>, nil]
        optional :contacts,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Contact] }

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
        #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive, nil]
        optional :interactive, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive }

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
        #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template, nil]
        optional :template, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Template }

        # @!attribute text
        #   Text message content. Can only be sent within a 24-hour customer service window.
        #
        #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Text, nil]
        optional :text, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Text }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Type, nil]
        optional :type, enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Type }

        # @!attribute video
        #
        #   @return [Telnyx::Models::WhatsappMedia, nil]
        optional :video, -> { Telnyx::WhatsappMedia }

        # @!method initialize(audio: nil, biz_opaque_callback_data: nil, contacts: nil, document: nil, image: nil, interactive: nil, location: nil, reaction: nil, sticker: nil, template: nil, text: nil, type: nil, video: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessageWhatsappParams::WhatsappMessage} for more details.
        #
        #   @param audio [Telnyx::Models::WhatsappMedia]
        #
        #   @param biz_opaque_callback_data [String] custom data to return with status update
        #
        #   @param contacts [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact>]
        #
        #   @param document [Telnyx::Models::WhatsappMedia]
        #
        #   @param image [Telnyx::Models::WhatsappMedia]
        #
        #   @param interactive [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive]
        #
        #   @param location [Telnyx::Models::WhatsappLocation]
        #
        #   @param reaction [Telnyx::Models::WhatsappReaction]
        #
        #   @param sticker [Telnyx::Models::WhatsappMedia]
        #
        #   @param template [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template] Template message object. Provide either template_id or name + language to identi
        #
        #   @param text [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Text] Text message content. Can only be sent within a 24-hour customer service window.
        #
        #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Type]
        #
        #   @param video [Telnyx::Models::WhatsappMedia]

        class Contact < Telnyx::Internal::Type::BaseModel
          # @!attribute addresses
          #
          #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Address>, nil]
          optional :addresses,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Address] }

          # @!attribute birthday
          #
          #   @return [String, nil]
          optional :birthday, String

          # @!attribute emails
          #
          #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Email>, nil]
          optional :emails,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Email] }

          # @!attribute name
          #
          #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Name, nil]
          optional :name, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Name }

          # @!attribute org
          #
          #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Org, nil]
          optional :org, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Org }

          # @!attribute phones
          #
          #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Phone>, nil]
          optional :phones,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Phone] }

          # @!attribute urls
          #
          #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::URL>, nil]
          optional :urls,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::URL] }

          # @!method initialize(addresses: nil, birthday: nil, emails: nil, name: nil, org: nil, phones: nil, urls: nil)
          #   @param addresses [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Address>]
          #   @param birthday [String]
          #   @param emails [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Email>]
          #   @param name [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Name]
          #   @param org [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Org]
          #   @param phones [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::Phone>]
          #   @param urls [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact::URL>]

          class Address < Telnyx::Internal::Type::BaseModel
            # @!attribute city
            #
            #   @return [String, nil]
            optional :city, String

            # @!attribute country
            #
            #   @return [String, nil]
            optional :country, String

            # @!attribute country_code
            #
            #   @return [String, nil]
            optional :country_code, String

            # @!attribute state
            #
            #   @return [String, nil]
            optional :state, String

            # @!attribute street
            #
            #   @return [String, nil]
            optional :street, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute zip
            #
            #   @return [String, nil]
            optional :zip, String

            # @!method initialize(city: nil, country: nil, country_code: nil, state: nil, street: nil, type: nil, zip: nil)
            #   @param city [String]
            #   @param country [String]
            #   @param country_code [String]
            #   @param state [String]
            #   @param street [String]
            #   @param type [String]
            #   @param zip [String]
          end

          class Email < Telnyx::Internal::Type::BaseModel
            # @!attribute email
            #
            #   @return [String, nil]
            optional :email, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(email: nil, type: nil)
            #   @param email [String]
            #   @param type [String]
          end

          # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact#name
          class Name < Telnyx::Internal::Type::BaseModel
            # @!attribute formatted_name
            #   contact's full name as displayed in the message
            #
            #   @return [String]
            required :formatted_name, String

            # @!attribute first_name
            #
            #   @return [String, nil]
            optional :first_name, String

            # @!attribute last_name
            #
            #   @return [String, nil]
            optional :last_name, String

            # @!attribute middle_name
            #
            #   @return [String, nil]
            optional :middle_name, String

            # @!attribute prefix
            #
            #   @return [String, nil]
            optional :prefix, String

            # @!attribute suffix
            #
            #   @return [String, nil]
            optional :suffix, String

            # @!method initialize(formatted_name:, first_name: nil, last_name: nil, middle_name: nil, prefix: nil, suffix: nil)
            #   @param formatted_name [String] contact's full name as displayed in the message
            #
            #   @param first_name [String]
            #
            #   @param last_name [String]
            #
            #   @param middle_name [String]
            #
            #   @param prefix [String]
            #
            #   @param suffix [String]
          end

          # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Contact#org
          class Org < Telnyx::Internal::Type::BaseModel
            # @!attribute company
            #
            #   @return [String, nil]
            optional :company, String

            # @!attribute department
            #
            #   @return [String, nil]
            optional :department, String

            # @!attribute title
            #
            #   @return [String, nil]
            optional :title, String

            # @!method initialize(company: nil, department: nil, title: nil)
            #   @param company [String]
            #   @param department [String]
            #   @param title [String]
          end

          class Phone < Telnyx::Internal::Type::BaseModel
            # @!attribute phone
            #
            #   @return [String, nil]
            optional :phone, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute wa_id
            #
            #   @return [String, nil]
            optional :wa_id, String

            # @!method initialize(phone: nil, type: nil, wa_id: nil)
            #   @param phone [String]
            #   @param type [String]
            #   @param wa_id [String]
          end

          class URL < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute url
            #
            #   @return [String, nil]
            optional :url, String

            # @!method initialize(type: nil, url: nil)
            #   @param type [String]
            #   @param url [String]
          end
        end

        # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage#interactive
        class Interactive < Telnyx::Internal::Type::BaseModel
          # @!attribute action
          #
          #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action, nil]
          optional :action, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action }

          # @!attribute body
          #
          #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Body, nil]
          optional :body, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Body }

          # @!attribute footer
          #
          #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Footer, nil]
          optional :footer, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Footer }

          # @!attribute header
          #
          #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Header, nil]
          optional :header, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Type, nil]
          optional :type, enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type }

          # @!method initialize(action: nil, body: nil, footer: nil, header: nil, type: nil)
          #   @param action [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action]
          #   @param body [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Body]
          #   @param footer [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Footer]
          #   @param header [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Header]
          #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Type]

          # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive#action
          class Action < Telnyx::Internal::Type::BaseModel
            # @!attribute button
            #
            #   @return [String, nil]
            optional :button, String

            # @!attribute buttons
            #
            #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button>, nil]
            optional :buttons,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button] }

            # @!attribute cards
            #
            #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card>, nil]
            optional :cards,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card] }

            # @!attribute catalog_id
            #
            #   @return [String, nil]
            optional :catalog_id, String

            # @!attribute mode
            #
            #   @return [String, nil]
            optional :mode, String

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute parameters
            #
            #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters, nil]
            optional :parameters,
                     -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters }

            # @!attribute product_retailer_id
            #
            #   @return [String, nil]
            optional :product_retailer_id, String

            # @!attribute sections
            #
            #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section>, nil]
            optional :sections,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section] }

            # @!method initialize(button: nil, buttons: nil, cards: nil, catalog_id: nil, mode: nil, name: nil, parameters: nil, product_retailer_id: nil, sections: nil)
            #   @param button [String]
            #   @param buttons [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button>]
            #   @param cards [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card>]
            #   @param catalog_id [String]
            #   @param mode [String]
            #   @param name [String]
            #   @param parameters [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters]
            #   @param product_retailer_id [String]
            #   @param sections [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section>]

            class Button < Telnyx::Internal::Type::BaseModel
              # @!attribute reply
              #
              #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply, nil]
              optional :reply, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply }

              # @!attribute type
              #
              #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type, nil]
              optional :type,
                       enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type }

              # @!method initialize(reply: nil, type: nil)
              #   @param reply [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply]
              #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type]

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button#reply
              class Reply < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #   unique identifier for each button, 256 character maximum
                #
                #   @return [String, nil]
                optional :id, String

                # @!attribute title
                #   button label, 20 character maximum
                #
                #   @return [String, nil]
                optional :title, String

                # @!method initialize(id: nil, title: nil)
                #   @param id [String] unique identifier for each button, 256 character maximum
                #
                #   @param title [String] button label, 20 character maximum
              end

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button#type
              module Type
                extend Telnyx::Internal::Type::Enum

                REPLY = :reply

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Card < Telnyx::Internal::Type::BaseModel
              # @!attribute action
              #
              #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action, nil]
              optional :action, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action }

              # @!attribute body
              #
              #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body, nil]
              optional :body, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body }

              # @!attribute card_index
              #   unique index for each card (0-9)
              #
              #   @return [Integer, nil]
              optional :card_index, Integer

              # @!attribute header
              #
              #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header, nil]
              optional :header, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header }

              # @!attribute type
              #
              #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type, nil]
              optional :type,
                       enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type }

              # @!method initialize(action: nil, body: nil, card_index: nil, header: nil, type: nil)
              #   @param action [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action]
              #
              #   @param body [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body]
              #
              #   @param card_index [Integer] unique index for each card (0-9)
              #
              #   @param header [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header]
              #
              #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type]

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card#action
              class Action < Telnyx::Internal::Type::BaseModel
                # @!attribute catalog_id
                #   the unique ID of the catalog
                #
                #   @return [String, nil]
                optional :catalog_id, String

                # @!attribute product_retailer_id
                #   the unique retailer ID of the product
                #
                #   @return [String, nil]
                optional :product_retailer_id, String

                # @!method initialize(catalog_id: nil, product_retailer_id: nil)
                #   @param catalog_id [String] the unique ID of the catalog
                #
                #   @param product_retailer_id [String] the unique retailer ID of the product
              end

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card#body
              class Body < Telnyx::Internal::Type::BaseModel
                # @!attribute text
                #   160 character maximum, up to 2 line breaks
                #
                #   @return [String, nil]
                optional :text, String

                # @!method initialize(text: nil)
                #   @param text [String] 160 character maximum, up to 2 line breaks
              end

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card#header
              class Header < Telnyx::Internal::Type::BaseModel
                # @!attribute image
                #
                #   @return [Telnyx::Models::WhatsappMedia, nil]
                optional :image, -> { Telnyx::WhatsappMedia }

                # @!attribute type
                #
                #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type, nil]
                optional :type,
                         enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type }

                # @!attribute video
                #
                #   @return [Telnyx::Models::WhatsappMedia, nil]
                optional :video, -> { Telnyx::WhatsappMedia }

                # @!method initialize(image: nil, type: nil, video: nil)
                #   @param image [Telnyx::Models::WhatsappMedia]
                #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type]
                #   @param video [Telnyx::Models::WhatsappMedia]

                # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header#type
                module Type
                  extend Telnyx::Internal::Type::Enum

                  IMAGE = :image
                  VIDEO = :video

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card#type
              module Type
                extend Telnyx::Internal::Type::Enum

                CTA_URL = :cta_url

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action#parameters
            class Parameters < Telnyx::Internal::Type::BaseModel
              # @!attribute display_text
              #   button label text, 20 character maximum
              #
              #   @return [String, nil]
              optional :display_text, String

              # @!attribute flow_action
              #   how the flow starts. navigate opens the screen in flow_action_payload;
              #   data_exchange requests the first screen from the business's flow endpoint.
              #   Defaults to navigate
              #
              #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction, nil]
              optional :flow_action,
                       enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction }

              # @!attribute flow_action_payload
              #   optional initial screen and data. When omitted, the flow opens on its first
              #   entry screen. Must be omitted when flow_action is data_exchange
              #
              #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowActionPayload, nil]
              optional :flow_action_payload,
                       -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowActionPayload }

              # @!attribute flow_cta
              #   text of the button that opens the flow, 1-20 characters, no emoji. Required for
              #   flow messages
              #
              #   @return [String, nil]
              optional :flow_cta, String

              # @!attribute flow_id
              #   ID of the flow to open. Provide exactly one of flow_id or flow_name
              #
              #   @return [String, nil]
              optional :flow_id, String

              # @!attribute flow_message_version
              #   flow message version, must be 3. Required for flow messages
              #
              #   @return [String, nil]
              optional :flow_message_version, String

              # @!attribute flow_name
              #   name of the flow to open. Provide exactly one of flow_id or flow_name
              #
              #   @return [String, nil]
              optional :flow_name, String

              # @!attribute flow_token
              #   business-generated identifier for the flow session. Returned in the flow
              #   response for correlation
              #
              #   @return [String, nil]
              optional :flow_token, String

              # @!attribute mode
              #   use draft to test an unpublished flow. Defaults to published
              #
              #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode, nil]
              optional :mode,
                       enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode }

              # @!attribute url
              #   button URL to load when tapped by the user
              #
              #   @return [String, nil]
              optional :url, String

              # @!method initialize(display_text: nil, flow_action: nil, flow_action_payload: nil, flow_cta: nil, flow_id: nil, flow_message_version: nil, flow_name: nil, flow_token: nil, mode: nil, url: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters}
              #   for more details.
              #
              #   @param display_text [String] button label text, 20 character maximum
              #
              #   @param flow_action [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction] how the flow starts. navigate opens the screen in flow_action_payload; data_exch
              #
              #   @param flow_action_payload [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowActionPayload] optional initial screen and data. When omitted, the flow opens on its first entr
              #
              #   @param flow_cta [String] text of the button that opens the flow, 1-20 characters, no emoji. Required for
              #
              #   @param flow_id [String] ID of the flow to open. Provide exactly one of flow_id or flow_name
              #
              #   @param flow_message_version [String] flow message version, must be 3. Required for flow messages
              #
              #   @param flow_name [String] name of the flow to open. Provide exactly one of flow_id or flow_name
              #
              #   @param flow_token [String] business-generated identifier for the flow session. Returned in the flow respons
              #
              #   @param mode [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode] use draft to test an unpublished flow. Defaults to published
              #
              #   @param url [String] button URL to load when tapped by the user

              # how the flow starts. navigate opens the screen in flow_action_payload;
              # data_exchange requests the first screen from the business's flow endpoint.
              # Defaults to navigate
              #
              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters#flow_action
              module FlowAction
                extend Telnyx::Internal::Type::Enum

                NAVIGATE = :navigate
                DATA_EXCHANGE = :data_exchange

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters#flow_action_payload
              class FlowActionPayload < Telnyx::Internal::Type::BaseModel
                # @!attribute data
                #   input data for the first screen. Must be a non-empty object when provided
                #
                #   @return [Object, nil]
                optional :data, Telnyx::Internal::Type::Unknown

                # @!attribute screen
                #   ID of the first screen to show
                #
                #   @return [String, nil]
                optional :screen, String

                # @!method initialize(data: nil, screen: nil)
                #   optional initial screen and data. When omitted, the flow opens on its first
                #   entry screen. Must be omitted when flow_action is data_exchange
                #
                #   @param data [Object] input data for the first screen. Must be a non-empty object when provided
                #
                #   @param screen [String] ID of the first screen to show
              end

              # use draft to test an unpublished flow. Defaults to published
              #
              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters#mode
              module Mode
                extend Telnyx::Internal::Type::Enum

                DRAFT = :draft
                PUBLISHED = :published

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Section < Telnyx::Internal::Type::BaseModel
              # @!attribute product_items
              #
              #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem>, nil]
              optional :product_items,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem] }

              # @!attribute rows
              #
              #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row>, nil]
              optional :rows,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row] }

              # @!attribute title
              #   section title, 24 character maximum
              #
              #   @return [String, nil]
              optional :title, String

              # @!method initialize(product_items: nil, rows: nil, title: nil)
              #   @param product_items [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem>]
              #
              #   @param rows [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row>]
              #
              #   @param title [String] section title, 24 character maximum

              class ProductItem < Telnyx::Internal::Type::BaseModel
                # @!attribute product_retailer_id
                #
                #   @return [String, nil]
                optional :product_retailer_id, String

                # @!method initialize(product_retailer_id: nil)
                #   @param product_retailer_id [String]
              end

              class Row < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #   arbitrary string identifying the row, 200 character maximum
                #
                #   @return [String, nil]
                optional :id, String

                # @!attribute description
                #   row description, 72 character maximum
                #
                #   @return [String, nil]
                optional :description, String

                # @!attribute title
                #   row title, 24 character maximum
                #
                #   @return [String, nil]
                optional :title, String

                # @!method initialize(id: nil, description: nil, title: nil)
                #   @param id [String] arbitrary string identifying the row, 200 character maximum
                #
                #   @param description [String] row description, 72 character maximum
                #
                #   @param title [String] row title, 24 character maximum
              end
            end
          end

          # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive#body
          class Body < Telnyx::Internal::Type::BaseModel
            # @!attribute text
            #   body text, 1024 character maximum
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(text: nil)
            #   @param text [String] body text, 1024 character maximum
          end

          # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive#footer
          class Footer < Telnyx::Internal::Type::BaseModel
            # @!attribute text
            #   footer text, 60 character maximum
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(text: nil)
            #   @param text [String] footer text, 60 character maximum
          end

          # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive#header
          class Header < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   header type. Required when a header is provided; the matching document, image,
            #   text, or video field must be set
            #
            #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type]
            required :type, enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type }

            # @!attribute document
            #
            #   @return [Telnyx::Models::WhatsappMedia, nil]
            optional :document, -> { Telnyx::WhatsappMedia }

            # @!attribute image
            #
            #   @return [Telnyx::Models::WhatsappMedia, nil]
            optional :image, -> { Telnyx::WhatsappMedia }

            # @!attribute sub_text
            #
            #   @return [String, nil]
            optional :sub_text, String

            # @!attribute text
            #   header text, 60 character maximum
            #
            #   @return [String, nil]
            optional :text, String

            # @!attribute video
            #
            #   @return [Telnyx::Models::WhatsappMedia, nil]
            optional :video, -> { Telnyx::WhatsappMedia }

            # @!method initialize(type:, document: nil, image: nil, sub_text: nil, text: nil, video: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Header}
            #   for more details.
            #
            #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type] header type. Required when a header is provided; the matching document, image, t
            #
            #   @param document [Telnyx::Models::WhatsappMedia]
            #
            #   @param image [Telnyx::Models::WhatsappMedia]
            #
            #   @param sub_text [String]
            #
            #   @param text [String] header text, 60 character maximum
            #
            #   @param video [Telnyx::Models::WhatsappMedia]

            # header type. Required when a header is provided; the matching document, image,
            # text, or video field must be set
            #
            # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive::Header#type
            module Type
              extend Telnyx::Internal::Type::Enum

              DOCUMENT = :document
              IMAGE = :image
              TEXT = :text
              VIDEO = :video

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Interactive#type
          module Type
            extend Telnyx::Internal::Type::Enum

            CTA_URL = :cta_url
            LIST = :list
            CAROUSEL = :carousel
            BUTTON = :button
            LOCATION_REQUEST_MESSAGE = :location_request_message
            FLOW = :flow

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage#template
        class Template < Telnyx::Internal::Type::BaseModel
          # @!attribute components
          #   Template parameter values for header, body, and button components.
          #
          #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component>, nil]
          optional :components,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component] }

          # @!attribute language
          #   Template language. Required unless template_id is provided.
          #
          #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Language, nil]
          optional :language, -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Language }

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
          #   {Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template} for more
          #   details.
          #
          #   Template message object. Provide either template_id or name + language to
          #   identify the template.
          #
          #   @param components [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component>] Template parameter values for header, body, and button components.
          #
          #   @param language [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Language] Template language. Required unless template_id is provided.
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
            #   @return [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter>, nil]
            optional :parameters,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter] }

            # @!attribute sub_type
            #
            #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType, nil]
            optional :sub_type,
                     enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType }

            # @!attribute type
            #
            #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Type, nil]
            optional :type, enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type }

            # @!method initialize(index: nil, parameters: nil, sub_type: nil, type: nil)
            #   @param index [Integer] Button index (required for button components)
            #
            #   @param parameters [Array<Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter>]
            #
            #   @param sub_type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType]
            #
            #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Type]

            class Parameter < Telnyx::Internal::Type::BaseModel
              # @!attribute action
              #   Flow button parameters. Used with type action on a flow button component
              #
              #   @return [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action, nil]
              optional :action,
                       -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action }

              # @!attribute text
              #
              #   @return [String, nil]
              optional :text, String

              # @!attribute type
              #
              #   @return [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type, nil]
              optional :type,
                       enum: -> { Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type }

              # @!method initialize(action: nil, text: nil, type: nil)
              #   @param action [Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action] Flow button parameters. Used with type action on a flow button component
              #
              #   @param text [String]
              #
              #   @param type [Symbol, Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type]

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter#action
              class Action < Telnyx::Internal::Type::BaseModel
                # @!attribute flow_action_data
                #   input data for the first screen of the flow
                #
                #   @return [Object, nil]
                optional :flow_action_data, Telnyx::Internal::Type::Unknown

                # @!attribute flow_token
                #   business-generated identifier for the flow session. Returned in the flow
                #   response for correlation
                #
                #   @return [String, nil]
                optional :flow_token, String

                # @!method initialize(flow_action_data: nil, flow_token: nil)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action}
                #   for more details.
                #
                #   Flow button parameters. Used with type action on a flow button component
                #
                #   @param flow_action_data [Object] input data for the first screen of the flow
                #
                #   @param flow_token [String] business-generated identifier for the flow session. Returned in the flow respons
              end

              # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter#type
              module Type
                extend Telnyx::Internal::Type::Enum

                TEXT = :text
                IMAGE = :image
                VIDEO = :video
                DOCUMENT = :document
                CURRENCY = :currency
                DATE_TIME = :date_time
                ACTION = :action

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component#sub_type
            module SubType
              extend Telnyx::Internal::Type::Enum

              QUICK_REPLY = :quick_reply
              URL = :url
              FLOW = :flow

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template::Component#type
            module Type
              extend Telnyx::Internal::Type::Enum

              HEADER = :header
              BODY = :body
              BUTTON = :button

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage::Template#language
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

        # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage#text
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

        # @see Telnyx::Models::MessageWhatsappParams::WhatsappMessage#type
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

      # Message type - must be set to "WHATSAPP"
      module Type
        extend Telnyx::Internal::Type::Enum

        WHATSAPP = :WHATSAPP

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
