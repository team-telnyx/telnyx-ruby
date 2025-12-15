# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messsages#whatsapp
    class MesssageWhatsappParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute from
      #   Phone number in +E.164 format associated with Whatsapp account
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   Phone number in +E.164 format
      #
      #   @return [String]
      required :to, String

      # @!attribute whatsapp_message
      #
      #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage]
      required :whatsapp_message, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage }

      # @!attribute type
      #   Message type - must be set to "WHATSAPP"
      #
      #   @return [Symbol, Telnyx::Models::MesssageWhatsappParams::Type, nil]
      optional :type, enum: -> { Telnyx::MesssageWhatsappParams::Type }

      # @!attribute webhook_url
      #   The URL where webhooks related to this message will be sent.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(from:, to:, whatsapp_message:, type: nil, webhook_url: nil, request_options: {})
      #   @param from [String] Phone number in +E.164 format associated with Whatsapp account
      #
      #   @param to [String] Phone number in +E.164 format
      #
      #   @param whatsapp_message [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage]
      #
      #   @param type [Symbol, Telnyx::Models::MesssageWhatsappParams::Type] Message type - must be set to "WHATSAPP"
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
        #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact>, nil]
        optional :contacts,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Contact] }

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
        #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive, nil]
        optional :interactive, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive }

        # @!attribute location
        #
        #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Location, nil]
        optional :location, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Location }

        # @!attribute reaction
        #
        #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Reaction, nil]
        optional :reaction, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Reaction }

        # @!attribute sticker
        #
        #   @return [Telnyx::Models::WhatsappMedia, nil]
        optional :sticker, -> { Telnyx::WhatsappMedia }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Type, nil]
        optional :type, enum: -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Type }

        # @!attribute video
        #
        #   @return [Telnyx::Models::WhatsappMedia, nil]
        optional :video, -> { Telnyx::WhatsappMedia }

        # @!method initialize(audio: nil, biz_opaque_callback_data: nil, contacts: nil, document: nil, image: nil, interactive: nil, location: nil, reaction: nil, sticker: nil, type: nil, video: nil)
        #   @param audio [Telnyx::Models::WhatsappMedia]
        #
        #   @param biz_opaque_callback_data [String] custom data to return with status update
        #
        #   @param contacts [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact>]
        #
        #   @param document [Telnyx::Models::WhatsappMedia]
        #
        #   @param image [Telnyx::Models::WhatsappMedia]
        #
        #   @param interactive [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive]
        #
        #   @param location [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Location]
        #
        #   @param reaction [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Reaction]
        #
        #   @param sticker [Telnyx::Models::WhatsappMedia]
        #
        #   @param type [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Type]
        #
        #   @param video [Telnyx::Models::WhatsappMedia]

        class Contact < Telnyx::Internal::Type::BaseModel
          # @!attribute addresses
          #
          #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::Address>, nil]
          optional :addresses,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Contact::Address] }

          # @!attribute birthday
          #
          #   @return [String, nil]
          optional :birthday, String

          # @!attribute emails
          #
          #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::Email>, nil]
          optional :emails,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Contact::Email] }

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute org
          #
          #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::Org, nil]
          optional :org, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Contact::Org }

          # @!attribute phones
          #
          #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::Phone>, nil]
          optional :phones,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Contact::Phone] }

          # @!attribute urls
          #
          #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::URL>, nil]
          optional :urls,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Contact::URL] }

          # @!method initialize(addresses: nil, birthday: nil, emails: nil, name: nil, org: nil, phones: nil, urls: nil)
          #   @param addresses [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::Address>]
          #   @param birthday [String]
          #   @param emails [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::Email>]
          #   @param name [String]
          #   @param org [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::Org]
          #   @param phones [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::Phone>]
          #   @param urls [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact::URL>]

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

          # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Contact#org
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

        # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage#interactive
        class Interactive < Telnyx::Internal::Type::BaseModel
          # @!attribute action
          #
          #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action, nil]
          optional :action, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action }

          # @!attribute body
          #
          #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Body, nil]
          optional :body, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Body }

          # @!attribute footer
          #
          #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Footer, nil]
          optional :footer, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Footer }

          # @!attribute header
          #
          #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Header, nil]
          optional :header, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Header }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Type, nil]
          optional :type, enum: -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Type }

          # @!method initialize(action: nil, body: nil, footer: nil, header: nil, type: nil)
          #   @param action [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action]
          #   @param body [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Body]
          #   @param footer [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Footer]
          #   @param header [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Header]
          #   @param type [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Type]

          # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive#action
          class Action < Telnyx::Internal::Type::BaseModel
            # @!attribute button
            #
            #   @return [String, nil]
            optional :button, String

            # @!attribute buttons
            #
            #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button>, nil]
            optional :buttons,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button] }

            # @!attribute cards
            #
            #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card>, nil]
            optional :cards,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card] }

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
            #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters, nil]
            optional :parameters,
                     -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters }

            # @!attribute product_retailer_id
            #
            #   @return [String, nil]
            optional :product_retailer_id, String

            # @!attribute sections
            #
            #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section>, nil]
            optional :sections,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section] }

            # @!method initialize(button: nil, buttons: nil, cards: nil, catalog_id: nil, mode: nil, name: nil, parameters: nil, product_retailer_id: nil, sections: nil)
            #   @param button [String]
            #   @param buttons [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button>]
            #   @param cards [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card>]
            #   @param catalog_id [String]
            #   @param mode [String]
            #   @param name [String]
            #   @param parameters [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters]
            #   @param product_retailer_id [String]
            #   @param sections [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section>]

            class Button < Telnyx::Internal::Type::BaseModel
              # @!attribute reply
              #
              #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply, nil]
              optional :reply,
                       -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply }

              # @!attribute type
              #
              #   @return [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type, nil]
              optional :type,
                       enum: -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type }

              # @!method initialize(reply: nil, type: nil)
              #   @param reply [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply]
              #   @param type [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type]

              # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button#reply
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

              # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Button#type
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
              #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action, nil]
              optional :action,
                       -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action }

              # @!attribute body
              #
              #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body, nil]
              optional :body, -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body }

              # @!attribute card_index
              #   unique index for each card (0-9)
              #
              #   @return [Integer, nil]
              optional :card_index, Integer

              # @!attribute header
              #
              #   @return [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header, nil]
              optional :header,
                       -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header }

              # @!attribute type
              #
              #   @return [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type, nil]
              optional :type,
                       enum: -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type }

              # @!method initialize(action: nil, body: nil, card_index: nil, header: nil, type: nil)
              #   @param action [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action]
              #
              #   @param body [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body]
              #
              #   @param card_index [Integer] unique index for each card (0-9)
              #
              #   @param header [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header]
              #
              #   @param type [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type]

              # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card#action
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

              # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card#body
              class Body < Telnyx::Internal::Type::BaseModel
                # @!attribute text
                #   160 character maximum, up to 2 line breaks
                #
                #   @return [String, nil]
                optional :text, String

                # @!method initialize(text: nil)
                #   @param text [String] 160 character maximum, up to 2 line breaks
              end

              # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card#header
              class Header < Telnyx::Internal::Type::BaseModel
                # @!attribute image
                #
                #   @return [Telnyx::Models::WhatsappMedia, nil]
                optional :image, -> { Telnyx::WhatsappMedia }

                # @!attribute type
                #
                #   @return [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type, nil]
                optional :type,
                         enum: -> { Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type }

                # @!attribute video
                #
                #   @return [Telnyx::Models::WhatsappMedia, nil]
                optional :video, -> { Telnyx::WhatsappMedia }

                # @!method initialize(image: nil, type: nil, video: nil)
                #   @param image [Telnyx::Models::WhatsappMedia]
                #   @param type [Symbol, Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type]
                #   @param video [Telnyx::Models::WhatsappMedia]

                # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header#type
                module Type
                  extend Telnyx::Internal::Type::Enum

                  IMAGE = :image
                  VIDEO = :video

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Card#type
              module Type
                extend Telnyx::Internal::Type::Enum

                CTA_URL = :cta_url

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action#parameters
            class Parameters < Telnyx::Internal::Type::BaseModel
              # @!attribute display_text
              #   button label text, 20 character maximum
              #
              #   @return [String, nil]
              optional :display_text, String

              # @!attribute url
              #   button URL to load when tapped by the user
              #
              #   @return [String, nil]
              optional :url, String

              # @!method initialize(display_text: nil, url: nil)
              #   @param display_text [String] button label text, 20 character maximum
              #
              #   @param url [String] button URL to load when tapped by the user
            end

            class Section < Telnyx::Internal::Type::BaseModel
              # @!attribute product_items
              #
              #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem>, nil]
              optional :product_items,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem] }

              # @!attribute rows
              #
              #   @return [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row>, nil]
              optional :rows,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row] }

              # @!attribute title
              #   section title, 24 character maximum
              #
              #   @return [String, nil]
              optional :title, String

              # @!method initialize(product_items: nil, rows: nil, title: nil)
              #   @param product_items [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem>]
              #
              #   @param rows [Array<Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row>]
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

          # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive#body
          class Body < Telnyx::Internal::Type::BaseModel
            # @!attribute text
            #   body text, 1024 character maximum
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(text: nil)
            #   @param text [String] body text, 1024 character maximum
          end

          # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive#footer
          class Footer < Telnyx::Internal::Type::BaseModel
            # @!attribute text
            #   footer text, 60 character maximum
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(text: nil)
            #   @param text [String] footer text, 60 character maximum
          end

          # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive#header
          class Header < Telnyx::Internal::Type::BaseModel
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

            # @!method initialize(document: nil, image: nil, sub_text: nil, text: nil, video: nil)
            #   @param document [Telnyx::Models::WhatsappMedia]
            #
            #   @param image [Telnyx::Models::WhatsappMedia]
            #
            #   @param sub_text [String]
            #
            #   @param text [String] header text, 60 character maximum
            #
            #   @param video [Telnyx::Models::WhatsappMedia]
          end

          # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage::Interactive#type
          module Type
            extend Telnyx::Internal::Type::Enum

            CTA_URL = :cta_url
            LIST = :list
            CAROUSEL = :carousel
            BUTTON = :button
            LOCATION_REQUEST_MESSAGE = :location_request_message

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage#location
        class Location < Telnyx::Internal::Type::BaseModel
          # @!attribute address
          #
          #   @return [String, nil]
          optional :address, String

          # @!attribute latitude
          #
          #   @return [String, nil]
          optional :latitude, String

          # @!attribute longitude
          #
          #   @return [String, nil]
          optional :longitude, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(address: nil, latitude: nil, longitude: nil, name: nil)
          #   @param address [String]
          #   @param latitude [String]
          #   @param longitude [String]
          #   @param name [String]
        end

        # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage#reaction
        class Reaction < Telnyx::Internal::Type::BaseModel
          # @!attribute empji
          #
          #   @return [String, nil]
          optional :empji, String

          # @!attribute message_id
          #
          #   @return [String, nil]
          optional :message_id, String

          # @!method initialize(empji: nil, message_id: nil)
          #   @param empji [String]
          #   @param message_id [String]
        end

        # @see Telnyx::Models::MesssageWhatsappParams::WhatsappMessage#type
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
