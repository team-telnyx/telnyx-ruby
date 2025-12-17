# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_whatsapp
    class MessageSendWhatsappResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data, nil]
      optional :data, -> { Telnyx::Models::MessageSendWhatsappResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessageSendWhatsappResponse::Data]

      # @see Telnyx::Models::MessageSendWhatsappResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   message ID
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute body
        #
        #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body, nil]
        optional :body, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body }

        # @!attribute direction
        #
        #   @return [String, nil]
        optional :direction, String

        # @!attribute encoding
        #
        #   @return [String, nil]
        optional :encoding, String

        # @!attribute from
        #
        #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::From, nil]
        optional :from, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::From }

        # @!attribute messaging_profile_id
        #
        #   @return [String, nil]
        optional :messaging_profile_id, String

        # @!attribute organization_id
        #
        #   @return [String, nil]
        optional :organization_id, String

        # @!attribute received_at
        #
        #   @return [Time, nil]
        optional :received_at, Time

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute to
        #
        #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::To>, nil]
        optional :to,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::To] }

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, body: nil, direction: nil, encoding: nil, from: nil, messaging_profile_id: nil, organization_id: nil, received_at: nil, record_type: nil, to: nil, type: nil)
        #   @param id [String] message ID
        #
        #   @param body [Telnyx::Models::MessageSendWhatsappResponse::Data::Body]
        #
        #   @param direction [String]
        #
        #   @param encoding [String]
        #
        #   @param from [Telnyx::Models::MessageSendWhatsappResponse::Data::From]
        #
        #   @param messaging_profile_id [String]
        #
        #   @param organization_id [String]
        #
        #   @param received_at [Time]
        #
        #   @param record_type [String]
        #
        #   @param to [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::To>]
        #
        #   @param type [String]

        # @see Telnyx::Models::MessageSendWhatsappResponse::Data#body
        class Body < Telnyx::Internal::Type::BaseModel
          # @!attribute audio
          #
          #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Audio, nil]
          optional :audio, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Audio }

          # @!attribute biz_opaque_callback_data
          #   custom data to return with status update
          #
          #   @return [String, nil]
          optional :biz_opaque_callback_data, String

          # @!attribute contacts
          #
          #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact>, nil]
          optional :contacts,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact] }

          # @!attribute document
          #
          #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Document, nil]
          optional :document, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Document }

          # @!attribute image
          #
          #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Image, nil]
          optional :image, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Image }

          # @!attribute interactive
          #
          #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive, nil]
          optional :interactive, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive }

          # @!attribute location
          #
          #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Location, nil]
          optional :location, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Location }

          # @!attribute reaction
          #
          #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Reaction, nil]
          optional :reaction, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Reaction }

          # @!attribute sticker
          #
          #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Sticker, nil]
          optional :sticker, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Sticker }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Type, nil]
          optional :type, enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Type }

          # @!attribute video
          #
          #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Video, nil]
          optional :video, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Video }

          # @!method initialize(audio: nil, biz_opaque_callback_data: nil, contacts: nil, document: nil, image: nil, interactive: nil, location: nil, reaction: nil, sticker: nil, type: nil, video: nil)
          #   @param audio [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Audio]
          #
          #   @param biz_opaque_callback_data [String] custom data to return with status update
          #
          #   @param contacts [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact>]
          #
          #   @param document [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Document]
          #
          #   @param image [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Image]
          #
          #   @param interactive [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive]
          #
          #   @param location [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Location]
          #
          #   @param reaction [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Reaction]
          #
          #   @param sticker [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Sticker]
          #
          #   @param type [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Type]
          #
          #   @param video [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Video]

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#audio
          class Audio < Telnyx::Internal::Type::BaseModel
            # @!attribute caption
            #   media caption
            #
            #   @return [String, nil]
            optional :caption, String

            # @!attribute filename
            #   file name with extension
            #
            #   @return [String, nil]
            optional :filename, String

            # @!attribute link
            #   media URL
            #
            #   @return [String, nil]
            optional :link, String

            # @!attribute voice
            #   true if voice message
            #
            #   @return [Boolean, nil]
            optional :voice, Telnyx::Internal::Type::Boolean

            # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
            #   @param caption [String] media caption
            #
            #   @param filename [String] file name with extension
            #
            #   @param link [String] media URL
            #
            #   @param voice [Boolean] true if voice message
          end

          class Contact < Telnyx::Internal::Type::BaseModel
            # @!attribute addresses
            #
            #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Address>, nil]
            optional :addresses,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Address] }

            # @!attribute birthday
            #
            #   @return [String, nil]
            optional :birthday, String

            # @!attribute emails
            #
            #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Email>, nil]
            optional :emails,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Email] }

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute org
            #
            #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Org, nil]
            optional :org, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Org }

            # @!attribute phones
            #
            #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Phone>, nil]
            optional :phones,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Phone] }

            # @!attribute urls
            #
            #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::URL>, nil]
            optional :urls,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::URL] }

            # @!method initialize(addresses: nil, birthday: nil, emails: nil, name: nil, org: nil, phones: nil, urls: nil)
            #   @param addresses [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Address>]
            #   @param birthday [String]
            #   @param emails [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Email>]
            #   @param name [String]
            #   @param org [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Org]
            #   @param phones [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::Phone>]
            #   @param urls [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact::URL>]

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

            # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Contact#org
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

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#document
          class Document < Telnyx::Internal::Type::BaseModel
            # @!attribute caption
            #   media caption
            #
            #   @return [String, nil]
            optional :caption, String

            # @!attribute filename
            #   file name with extension
            #
            #   @return [String, nil]
            optional :filename, String

            # @!attribute link
            #   media URL
            #
            #   @return [String, nil]
            optional :link, String

            # @!attribute voice
            #   true if voice message
            #
            #   @return [Boolean, nil]
            optional :voice, Telnyx::Internal::Type::Boolean

            # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
            #   @param caption [String] media caption
            #
            #   @param filename [String] file name with extension
            #
            #   @param link [String] media URL
            #
            #   @param voice [Boolean] true if voice message
          end

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#image
          class Image < Telnyx::Internal::Type::BaseModel
            # @!attribute caption
            #   media caption
            #
            #   @return [String, nil]
            optional :caption, String

            # @!attribute filename
            #   file name with extension
            #
            #   @return [String, nil]
            optional :filename, String

            # @!attribute link
            #   media URL
            #
            #   @return [String, nil]
            optional :link, String

            # @!attribute voice
            #   true if voice message
            #
            #   @return [Boolean, nil]
            optional :voice, Telnyx::Internal::Type::Boolean

            # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
            #   @param caption [String] media caption
            #
            #   @param filename [String] file name with extension
            #
            #   @param link [String] media URL
            #
            #   @param voice [Boolean] true if voice message
          end

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#interactive
          class Interactive < Telnyx::Internal::Type::BaseModel
            # @!attribute action
            #
            #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action, nil]
            optional :action, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action }

            # @!attribute body
            #
            #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Body, nil]
            optional :body, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Body }

            # @!attribute footer
            #
            #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Footer, nil]
            optional :footer, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Footer }

            # @!attribute header
            #
            #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header, nil]
            optional :header, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header }

            # @!attribute type
            #
            #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Type, nil]
            optional :type, enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Type }

            # @!method initialize(action: nil, body: nil, footer: nil, header: nil, type: nil)
            #   @param action [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action]
            #   @param body [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Body]
            #   @param footer [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Footer]
            #   @param header [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header]
            #   @param type [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Type]

            # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive#action
            class Action < Telnyx::Internal::Type::BaseModel
              # @!attribute button
              #
              #   @return [String, nil]
              optional :button, String

              # @!attribute buttons
              #
              #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button>, nil]
              optional :buttons,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button] }

              # @!attribute cards
              #
              #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card>, nil]
              optional :cards,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card] }

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
              #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Parameters, nil]
              optional :parameters,
                       -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Parameters }

              # @!attribute product_retailer_id
              #
              #   @return [String, nil]
              optional :product_retailer_id, String

              # @!attribute sections
              #
              #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section>, nil]
              optional :sections,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section] }

              # @!method initialize(button: nil, buttons: nil, cards: nil, catalog_id: nil, mode: nil, name: nil, parameters: nil, product_retailer_id: nil, sections: nil)
              #   @param button [String]
              #   @param buttons [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button>]
              #   @param cards [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card>]
              #   @param catalog_id [String]
              #   @param mode [String]
              #   @param name [String]
              #   @param parameters [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Parameters]
              #   @param product_retailer_id [String]
              #   @param sections [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section>]

              class Button < Telnyx::Internal::Type::BaseModel
                # @!attribute reply
                #
                #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button::Reply, nil]
                optional :reply,
                         -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button::Reply }

                # @!attribute type
                #
                #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button::Type, nil]
                optional :type,
                         enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button::Type }

                # @!method initialize(reply: nil, type: nil)
                #   @param reply [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button::Reply]
                #   @param type [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button::Type]

                # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button#reply
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

                # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Button#type
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
                #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Action, nil]
                optional :action,
                         -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Action }

                # @!attribute body
                #
                #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Body, nil]
                optional :body,
                         -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Body }

                # @!attribute card_index
                #   unique index for each card (0-9)
                #
                #   @return [Integer, nil]
                optional :card_index, Integer

                # @!attribute header
                #
                #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header, nil]
                optional :header,
                         -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header }

                # @!attribute type
                #
                #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Type, nil]
                optional :type,
                         enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Type }

                # @!method initialize(action: nil, body: nil, card_index: nil, header: nil, type: nil)
                #   @param action [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Action]
                #
                #   @param body [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Body]
                #
                #   @param card_index [Integer] unique index for each card (0-9)
                #
                #   @param header [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header]
                #
                #   @param type [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Type]

                # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card#action
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

                # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card#body
                class Body < Telnyx::Internal::Type::BaseModel
                  # @!attribute text
                  #   160 character maximum, up to 2 line breaks
                  #
                  #   @return [String, nil]
                  optional :text, String

                  # @!method initialize(text: nil)
                  #   @param text [String] 160 character maximum, up to 2 line breaks
                end

                # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card#header
                class Header < Telnyx::Internal::Type::BaseModel
                  # @!attribute image
                  #
                  #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Image, nil]
                  optional :image,
                           -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Image }

                  # @!attribute type
                  #
                  #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type, nil]
                  optional :type,
                           enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type }

                  # @!attribute video
                  #
                  #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Video, nil]
                  optional :video,
                           -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Video }

                  # @!method initialize(image: nil, type: nil, video: nil)
                  #   @param image [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Image]
                  #   @param type [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type]
                  #   @param video [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Video]

                  # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header#image
                  class Image < Telnyx::Internal::Type::BaseModel
                    # @!attribute caption
                    #   media caption
                    #
                    #   @return [String, nil]
                    optional :caption, String

                    # @!attribute filename
                    #   file name with extension
                    #
                    #   @return [String, nil]
                    optional :filename, String

                    # @!attribute link
                    #   media URL
                    #
                    #   @return [String, nil]
                    optional :link, String

                    # @!attribute voice
                    #   true if voice message
                    #
                    #   @return [Boolean, nil]
                    optional :voice, Telnyx::Internal::Type::Boolean

                    # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
                    #   @param caption [String] media caption
                    #
                    #   @param filename [String] file name with extension
                    #
                    #   @param link [String] media URL
                    #
                    #   @param voice [Boolean] true if voice message
                  end

                  # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header#type
                  module Type
                    extend Telnyx::Internal::Type::Enum

                    IMAGE = :image
                    VIDEO = :video

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card::Header#video
                  class Video < Telnyx::Internal::Type::BaseModel
                    # @!attribute caption
                    #   media caption
                    #
                    #   @return [String, nil]
                    optional :caption, String

                    # @!attribute filename
                    #   file name with extension
                    #
                    #   @return [String, nil]
                    optional :filename, String

                    # @!attribute link
                    #   media URL
                    #
                    #   @return [String, nil]
                    optional :link, String

                    # @!attribute voice
                    #   true if voice message
                    #
                    #   @return [Boolean, nil]
                    optional :voice, Telnyx::Internal::Type::Boolean

                    # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
                    #   @param caption [String] media caption
                    #
                    #   @param filename [String] file name with extension
                    #
                    #   @param link [String] media URL
                    #
                    #   @param voice [Boolean] true if voice message
                  end
                end

                # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Card#type
                module Type
                  extend Telnyx::Internal::Type::Enum

                  CTA_URL = :cta_url

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action#parameters
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
                #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section::ProductItem>, nil]
                optional :product_items,
                         -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section::ProductItem] }

                # @!attribute rows
                #
                #   @return [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section::Row>, nil]
                optional :rows,
                         -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section::Row] }

                # @!attribute title
                #   section title, 24 character maximum
                #
                #   @return [String, nil]
                optional :title, String

                # @!method initialize(product_items: nil, rows: nil, title: nil)
                #   @param product_items [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section::ProductItem>]
                #
                #   @param rows [Array<Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Action::Section::Row>]
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

            # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive#body
            class Body < Telnyx::Internal::Type::BaseModel
              # @!attribute text
              #   body text, 1024 character maximum
              #
              #   @return [String, nil]
              optional :text, String

              # @!method initialize(text: nil)
              #   @param text [String] body text, 1024 character maximum
            end

            # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive#footer
            class Footer < Telnyx::Internal::Type::BaseModel
              # @!attribute text
              #   footer text, 60 character maximum
              #
              #   @return [String, nil]
              optional :text, String

              # @!method initialize(text: nil)
              #   @param text [String] footer text, 60 character maximum
            end

            # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive#header
            class Header < Telnyx::Internal::Type::BaseModel
              # @!attribute document
              #
              #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Document, nil]
              optional :document,
                       -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Document }

              # @!attribute image
              #
              #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Image, nil]
              optional :image,
                       -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Image }

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
              #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Video, nil]
              optional :video,
                       -> { Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Video }

              # @!method initialize(document: nil, image: nil, sub_text: nil, text: nil, video: nil)
              #   @param document [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Document]
              #
              #   @param image [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Image]
              #
              #   @param sub_text [String]
              #
              #   @param text [String] header text, 60 character maximum
              #
              #   @param video [Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header::Video]

              # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header#document
              class Document < Telnyx::Internal::Type::BaseModel
                # @!attribute caption
                #   media caption
                #
                #   @return [String, nil]
                optional :caption, String

                # @!attribute filename
                #   file name with extension
                #
                #   @return [String, nil]
                optional :filename, String

                # @!attribute link
                #   media URL
                #
                #   @return [String, nil]
                optional :link, String

                # @!attribute voice
                #   true if voice message
                #
                #   @return [Boolean, nil]
                optional :voice, Telnyx::Internal::Type::Boolean

                # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
                #   @param caption [String] media caption
                #
                #   @param filename [String] file name with extension
                #
                #   @param link [String] media URL
                #
                #   @param voice [Boolean] true if voice message
              end

              # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header#image
              class Image < Telnyx::Internal::Type::BaseModel
                # @!attribute caption
                #   media caption
                #
                #   @return [String, nil]
                optional :caption, String

                # @!attribute filename
                #   file name with extension
                #
                #   @return [String, nil]
                optional :filename, String

                # @!attribute link
                #   media URL
                #
                #   @return [String, nil]
                optional :link, String

                # @!attribute voice
                #   true if voice message
                #
                #   @return [Boolean, nil]
                optional :voice, Telnyx::Internal::Type::Boolean

                # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
                #   @param caption [String] media caption
                #
                #   @param filename [String] file name with extension
                #
                #   @param link [String] media URL
                #
                #   @param voice [Boolean] true if voice message
              end

              # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive::Header#video
              class Video < Telnyx::Internal::Type::BaseModel
                # @!attribute caption
                #   media caption
                #
                #   @return [String, nil]
                optional :caption, String

                # @!attribute filename
                #   file name with extension
                #
                #   @return [String, nil]
                optional :filename, String

                # @!attribute link
                #   media URL
                #
                #   @return [String, nil]
                optional :link, String

                # @!attribute voice
                #   true if voice message
                #
                #   @return [Boolean, nil]
                optional :voice, Telnyx::Internal::Type::Boolean

                # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
                #   @param caption [String] media caption
                #
                #   @param filename [String] file name with extension
                #
                #   @param link [String] media URL
                #
                #   @param voice [Boolean] true if voice message
              end
            end

            # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body::Interactive#type
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

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#location
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

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#reaction
          class Reaction < Telnyx::Internal::Type::BaseModel
            # @!attribute emoji
            #
            #   @return [String, nil]
            optional :emoji, String

            # @!attribute message_id
            #
            #   @return [String, nil]
            optional :message_id, String

            # @!method initialize(emoji: nil, message_id: nil)
            #   @param emoji [String]
            #   @param message_id [String]
          end

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#sticker
          class Sticker < Telnyx::Internal::Type::BaseModel
            # @!attribute caption
            #   media caption
            #
            #   @return [String, nil]
            optional :caption, String

            # @!attribute filename
            #   file name with extension
            #
            #   @return [String, nil]
            optional :filename, String

            # @!attribute link
            #   media URL
            #
            #   @return [String, nil]
            optional :link, String

            # @!attribute voice
            #   true if voice message
            #
            #   @return [Boolean, nil]
            optional :voice, Telnyx::Internal::Type::Boolean

            # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
            #   @param caption [String] media caption
            #
            #   @param filename [String] file name with extension
            #
            #   @param link [String] media URL
            #
            #   @param voice [Boolean] true if voice message
          end

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#type
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

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::Body#video
          class Video < Telnyx::Internal::Type::BaseModel
            # @!attribute caption
            #   media caption
            #
            #   @return [String, nil]
            optional :caption, String

            # @!attribute filename
            #   file name with extension
            #
            #   @return [String, nil]
            optional :filename, String

            # @!attribute link
            #   media URL
            #
            #   @return [String, nil]
            optional :link, String

            # @!attribute voice
            #   true if voice message
            #
            #   @return [Boolean, nil]
            optional :voice, Telnyx::Internal::Type::Boolean

            # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
            #   @param caption [String] media caption
            #
            #   @param filename [String] file name with extension
            #
            #   @param link [String] media URL
            #
            #   @param voice [Boolean] true if voice message
          end
        end

        # @see Telnyx::Models::MessageSendWhatsappResponse::Data#from
        class From < Telnyx::Internal::Type::BaseModel
          # @!attribute carrier
          #   The carrier of the sender.
          #
          #   @return [String, nil]
          optional :carrier, String

          # @!attribute line_type
          #   The line-type of the sender.
          #
          #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType, nil]
          optional :line_type, enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType }

          # @!attribute phone_number
          #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          #   code).
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status, nil]
          optional :status, enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status }

          # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MessageSendWhatsappResponse::Data::From} for more details.
          #
          #   @param carrier [String] The carrier of the sender.
          #
          #   @param line_type [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType] The line-type of the sender.
          #
          #   @param phone_number [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          #
          #   @param status [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status]

          # The line-type of the sender.
          #
          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::From#line_type
          module LineType
            extend Telnyx::Internal::Type::Enum

            WIRELINE = :Wireline
            WIRELESS = :Wireless
            VO_WI_FI = :VoWiFi
            VO_IP = :VoIP
            PRE_PAID_WIRELESS = :"Pre-Paid Wireless"
            EMPTY = :""

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::From#status
          module Status
            extend Telnyx::Internal::Type::Enum

            RECEIVED = :received
            DELIVERED = :delivered

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class To < Telnyx::Internal::Type::BaseModel
          # @!attribute carrier
          #
          #   @return [String, nil]
          optional :carrier, String

          # @!attribute line_type
          #
          #   @return [String, nil]
          optional :line_type, String

          # @!attribute phone_number
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
          #   @param carrier [String]
          #   @param line_type [String]
          #   @param phone_number [String]
          #   @param status [String]
        end
      end
    end
  end
end
