# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappInteractive < Telnyx::Internal::Type::BaseModel
      # @!attribute action
      #
      #   @return [Telnyx::Models::WhatsappInteractive::Action, nil]
      optional :action, -> { Telnyx::WhatsappInteractive::Action }

      # @!attribute body
      #
      #   @return [Telnyx::Models::WhatsappInteractive::Body, nil]
      optional :body, -> { Telnyx::WhatsappInteractive::Body }

      # @!attribute footer
      #
      #   @return [Telnyx::Models::WhatsappInteractive::Footer, nil]
      optional :footer, -> { Telnyx::WhatsappInteractive::Footer }

      # @!attribute header
      #
      #   @return [Telnyx::Models::WhatsappInteractive::Header, nil]
      optional :header, -> { Telnyx::WhatsappInteractive::Header }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::WhatsappInteractive::Type, nil]
      optional :type, enum: -> { Telnyx::WhatsappInteractive::Type }

      # @!method initialize(action: nil, body: nil, footer: nil, header: nil, type: nil)
      #   @param action [Telnyx::Models::WhatsappInteractive::Action]
      #   @param body [Telnyx::Models::WhatsappInteractive::Body]
      #   @param footer [Telnyx::Models::WhatsappInteractive::Footer]
      #   @param header [Telnyx::Models::WhatsappInteractive::Header]
      #   @param type [Symbol, Telnyx::Models::WhatsappInteractive::Type]

      # @see Telnyx::Models::WhatsappInteractive#action
      class Action < Telnyx::Internal::Type::BaseModel
        # @!attribute button
        #
        #   @return [String, nil]
        optional :button, String

        # @!attribute buttons
        #
        #   @return [Array<Telnyx::Models::WhatsappInteractive::Action::Button>, nil]
        optional :buttons, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappInteractive::Action::Button] }

        # @!attribute cards
        #
        #   @return [Array<Telnyx::Models::WhatsappInteractive::Action::Card>, nil]
        optional :cards, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappInteractive::Action::Card] }

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
        #   @return [Telnyx::Models::WhatsappInteractive::Action::Parameters, nil]
        optional :parameters, -> { Telnyx::WhatsappInteractive::Action::Parameters }

        # @!attribute product_retailer_id
        #
        #   @return [String, nil]
        optional :product_retailer_id, String

        # @!attribute sections
        #
        #   @return [Array<Telnyx::Models::WhatsappInteractive::Action::Section>, nil]
        optional :sections, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappInteractive::Action::Section] }

        # @!method initialize(button: nil, buttons: nil, cards: nil, catalog_id: nil, mode: nil, name: nil, parameters: nil, product_retailer_id: nil, sections: nil)
        #   @param button [String]
        #   @param buttons [Array<Telnyx::Models::WhatsappInteractive::Action::Button>]
        #   @param cards [Array<Telnyx::Models::WhatsappInteractive::Action::Card>]
        #   @param catalog_id [String]
        #   @param mode [String]
        #   @param name [String]
        #   @param parameters [Telnyx::Models::WhatsappInteractive::Action::Parameters]
        #   @param product_retailer_id [String]
        #   @param sections [Array<Telnyx::Models::WhatsappInteractive::Action::Section>]

        class Button < Telnyx::Internal::Type::BaseModel
          # @!attribute reply
          #
          #   @return [Telnyx::Models::WhatsappInteractive::Action::Button::Reply, nil]
          optional :reply, -> { Telnyx::WhatsappInteractive::Action::Button::Reply }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappInteractive::Action::Button::Type, nil]
          optional :type, enum: -> { Telnyx::WhatsappInteractive::Action::Button::Type }

          # @!method initialize(reply: nil, type: nil)
          #   @param reply [Telnyx::Models::WhatsappInteractive::Action::Button::Reply]
          #   @param type [Symbol, Telnyx::Models::WhatsappInteractive::Action::Button::Type]

          # @see Telnyx::Models::WhatsappInteractive::Action::Button#reply
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

          # @see Telnyx::Models::WhatsappInteractive::Action::Button#type
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
          #   @return [Telnyx::Models::WhatsappInteractive::Action::Card::Action, nil]
          optional :action, -> { Telnyx::WhatsappInteractive::Action::Card::Action }

          # @!attribute body
          #
          #   @return [Telnyx::Models::WhatsappInteractive::Action::Card::Body, nil]
          optional :body, -> { Telnyx::WhatsappInteractive::Action::Card::Body }

          # @!attribute card_index
          #   unique index for each card (0-9)
          #
          #   @return [Integer, nil]
          optional :card_index, Integer

          # @!attribute header
          #
          #   @return [Telnyx::Models::WhatsappInteractive::Action::Card::Header, nil]
          optional :header, -> { Telnyx::WhatsappInteractive::Action::Card::Header }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappInteractive::Action::Card::Type, nil]
          optional :type, enum: -> { Telnyx::WhatsappInteractive::Action::Card::Type }

          # @!method initialize(action: nil, body: nil, card_index: nil, header: nil, type: nil)
          #   @param action [Telnyx::Models::WhatsappInteractive::Action::Card::Action]
          #
          #   @param body [Telnyx::Models::WhatsappInteractive::Action::Card::Body]
          #
          #   @param card_index [Integer] unique index for each card (0-9)
          #
          #   @param header [Telnyx::Models::WhatsappInteractive::Action::Card::Header]
          #
          #   @param type [Symbol, Telnyx::Models::WhatsappInteractive::Action::Card::Type]

          # @see Telnyx::Models::WhatsappInteractive::Action::Card#action
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

          # @see Telnyx::Models::WhatsappInteractive::Action::Card#body
          class Body < Telnyx::Internal::Type::BaseModel
            # @!attribute text
            #   160 character maximum, up to 2 line breaks
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(text: nil)
            #   @param text [String] 160 character maximum, up to 2 line breaks
          end

          # @see Telnyx::Models::WhatsappInteractive::Action::Card#header
          class Header < Telnyx::Internal::Type::BaseModel
            # @!attribute image
            #
            #   @return [Telnyx::Models::WhatsappMedia, nil]
            optional :image, -> { Telnyx::WhatsappMedia }

            # @!attribute type
            #
            #   @return [Symbol, Telnyx::Models::WhatsappInteractive::Action::Card::Header::Type, nil]
            optional :type, enum: -> { Telnyx::WhatsappInteractive::Action::Card::Header::Type }

            # @!attribute video
            #
            #   @return [Telnyx::Models::WhatsappMedia, nil]
            optional :video, -> { Telnyx::WhatsappMedia }

            # @!method initialize(image: nil, type: nil, video: nil)
            #   @param image [Telnyx::Models::WhatsappMedia]
            #   @param type [Symbol, Telnyx::Models::WhatsappInteractive::Action::Card::Header::Type]
            #   @param video [Telnyx::Models::WhatsappMedia]

            # @see Telnyx::Models::WhatsappInteractive::Action::Card::Header#type
            module Type
              extend Telnyx::Internal::Type::Enum

              IMAGE = :image
              VIDEO = :video

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::WhatsappInteractive::Action::Card#type
          module Type
            extend Telnyx::Internal::Type::Enum

            CTA_URL = :cta_url

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::WhatsappInteractive::Action#parameters
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
          #   @return [Array<Telnyx::Models::WhatsappInteractive::Action::Section::ProductItem>, nil]
          optional :product_items,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappInteractive::Action::Section::ProductItem] }

          # @!attribute rows
          #
          #   @return [Array<Telnyx::Models::WhatsappInteractive::Action::Section::Row>, nil]
          optional :rows, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappInteractive::Action::Section::Row] }

          # @!attribute title
          #   section title, 24 character maximum
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(product_items: nil, rows: nil, title: nil)
          #   @param product_items [Array<Telnyx::Models::WhatsappInteractive::Action::Section::ProductItem>]
          #
          #   @param rows [Array<Telnyx::Models::WhatsappInteractive::Action::Section::Row>]
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

      # @see Telnyx::Models::WhatsappInteractive#body
      class Body < Telnyx::Internal::Type::BaseModel
        # @!attribute text
        #   body text, 1024 character maximum
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(text: nil)
        #   @param text [String] body text, 1024 character maximum
      end

      # @see Telnyx::Models::WhatsappInteractive#footer
      class Footer < Telnyx::Internal::Type::BaseModel
        # @!attribute text
        #   footer text, 60 character maximum
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(text: nil)
        #   @param text [String] footer text, 60 character maximum
      end

      # @see Telnyx::Models::WhatsappInteractive#header
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

      # @see Telnyx::Models::WhatsappInteractive#type
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
  end
end
