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
      #   @return [Array<Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent>, nil]
      optional :components,
               -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::WhatsappMessageTemplateUpdateParams::Component] }

      # @!method initialize(id:, category: nil, components: nil, request_options: {})
      #   @param id [String]
      #
      #   @param category [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Category]
      #
      #   @param components [Array<Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent>] Updated template components. Same structure as the create request.
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

        # Optional header displayed at the top of the message.
        variant -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent }

        # The main text content of the message. Supports multiple variable parameters ({{1}}, {{2}}, etc.). Variables cannot be at the start or end. Maximum 1024 characters.
        variant -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent }

        # Optional footer displayed at the bottom of the message. Does not support variables.
        variant -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent }

        # Optional interactive buttons. Maximum 3 buttons per template.
        variant -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent }

        # Carousel component for multi-card templates. Each card can contain its own header, body, and buttons.
        variant -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent }

        class WhatsappTemplateHeaderComponent < Telnyx::Internal::Type::BaseModel
          # @!attribute format_
          #   Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
          #   LOCATION.
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format]
          required :format_,
                   enum: -> {
                     Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format
                   },
                   api_name: :format

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type]
          required :type,
                   enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type }

          # @!attribute example
          #   Sample values for header variables.
          #
          #   @return [Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Example, nil]
          optional :example,
                   -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Example }

          # @!attribute text
          #   Header text. Required when format is TEXT. Supports one variable ({{1}}).
          #   Variables cannot be at the start or end.
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(format_:, type:, example: nil, text: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent}
          #   for more details.
          #
          #   Optional header displayed at the top of the message.
          #
          #   @param format_ [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format] Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or LOC
          #
          #   @param type [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type]
          #
          #   @param example [Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Example] Sample values for header variables.
          #
          #   @param text [String] Header text. Required when format is TEXT. Supports one variable ({{1}}). Variab

          # Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
          # LOCATION.
          #
          # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent#format_
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

          # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent#type
          module Type
            extend Telnyx::Internal::Type::Enum

            HEADER = :HEADER

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent#example
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

        class WhatsappTemplateBodyComponent < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type]
          required :type,
                   enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type }

          # @!attribute example
          #   Sample values for body variables. Required when body text contains parameters.
          #
          #   @return [Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Example, nil]
          optional :example,
                   -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Example }

          # @!attribute text
          #   Body text content. Use {{1}}, {{2}}, etc. for variable placeholders. Required
          #   for MARKETING and UTILITY templates. Optional for AUTHENTICATION templates where
          #   Meta provides the built-in OTP body.
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(type:, example: nil, text: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent}
          #   for more details.
          #
          #   The main text content of the message. Supports multiple variable parameters
          #   ({{1}}, {{2}}, etc.). Variables cannot be at the start or end. Maximum 1024
          #   characters.
          #
          #   @param type [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type]
          #
          #   @param example [Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Example] Sample values for body variables. Required when body text contains parameters.
          #
          #   @param text [String] Body text content. Use {{1}}, {{2}}, etc. for variable placeholders. Required fo

          # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent#type
          module Type
            extend Telnyx::Internal::Type::Enum

            BODY = :BODY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent#example
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

        class WhatsappTemplateFooterComponent < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type]
          required :type,
                   enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type }

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
          #   {Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent}
          #   for more details.
          #
          #   Optional footer displayed at the bottom of the message. Does not support
          #   variables.
          #
          #   @param type [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type]
          #
          #   @param code_expiration_minutes [Integer] OTP code expiration time in minutes. Used in AUTHENTICATION template footers ins
          #
          #   @param text [String] Footer text. Maximum 60 characters. For non-authentication templates.

          # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent#type
          module Type
            extend Telnyx::Internal::Type::Enum

            FOOTER = :FOOTER

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class WhatsappTemplateButtonsComponent < Telnyx::Internal::Type::BaseModel
          # @!attribute buttons
          #   Array of button objects. Meta supports various combinations of button types.
          #
          #   @return [Array<Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button>]
          required :buttons,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button] }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type]
          required :type,
                   enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type }

          # @!method initialize(buttons:, type:)
          #   Optional interactive buttons. Maximum 3 buttons per template.
          #
          #   @param buttons [Array<Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button>] Array of button objects. Meta supports various combinations of button types.
          #
          #   @param type [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type]

          class Button < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type]
            required :type,
                     enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type }

            # @!attribute autofill_text
            #   Custom autofill button text for ONE_TAP OTP buttons.
            #
            #   @return [String, nil]
            optional :autofill_text, String

            # @!attribute example
            #   Sample values for URL variable.
            #
            #   @return [Array<String>, nil]
            optional :example, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute flow_action
            #   Flow action type for FLOW-type buttons.
            #
            #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction, nil]
            optional :flow_action,
                     enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction }

            # @!attribute flow_id
            #   Flow ID for FLOW-type buttons.
            #
            #   @return [String, nil]
            optional :flow_id, String

            # @!attribute navigate_screen
            #   Target screen name for FLOW buttons with navigate action.
            #
            #   @return [String, nil]
            optional :navigate_screen, String

            # @!attribute otp_type
            #
            #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType, nil]
            optional :otp_type,
                     enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType }

            # @!attribute package_name
            #   Android package name. Required for ONE_TAP OTP buttons.
            #
            #   @return [String, nil]
            optional :package_name, String

            # @!attribute phone_number
            #   Phone number in E.164 format.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute signature_hash
            #   Android app signing key hash. Required for ONE_TAP OTP buttons.
            #
            #   @return [String, nil]
            optional :signature_hash, String

            # @!attribute text
            #   Button label text. Maximum 25 characters. Required for URL, PHONE_NUMBER, and
            #   QUICK_REPLY buttons. Not required for OTP buttons (Meta supplies the label).
            #
            #   @return [String, nil]
            optional :text, String

            # @!attribute url
            #   URL for URL-type buttons. Supports one variable ({{1}}).
            #
            #   @return [String, nil]
            optional :url, String

            # @!attribute zero_tap_terms_accepted
            #   Whether zero-tap terms have been accepted.
            #
            #   @return [Boolean, nil]
            optional :zero_tap_terms_accepted, Telnyx::Internal::Type::Boolean

            # @!method initialize(type:, autofill_text: nil, example: nil, flow_action: nil, flow_id: nil, navigate_screen: nil, otp_type: nil, package_name: nil, phone_number: nil, signature_hash: nil, text: nil, url: nil, zero_tap_terms_accepted: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button}
            #   for more details.
            #
            #   @param type [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type]
            #
            #   @param autofill_text [String] Custom autofill button text for ONE_TAP OTP buttons.
            #
            #   @param example [Array<String>] Sample values for URL variable.
            #
            #   @param flow_action [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction] Flow action type for FLOW-type buttons.
            #
            #   @param flow_id [String] Flow ID for FLOW-type buttons.
            #
            #   @param navigate_screen [String] Target screen name for FLOW buttons with navigate action.
            #
            #   @param otp_type [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType]
            #
            #   @param package_name [String] Android package name. Required for ONE_TAP OTP buttons.
            #
            #   @param phone_number [String] Phone number in E.164 format.
            #
            #   @param signature_hash [String] Android app signing key hash. Required for ONE_TAP OTP buttons.
            #
            #   @param text [String] Button label text. Maximum 25 characters. Required for URL, PHONE_NUMBER, and QU
            #
            #   @param url [String] URL for URL-type buttons. Supports one variable ({{1}}).
            #
            #   @param zero_tap_terms_accepted [Boolean] Whether zero-tap terms have been accepted.

            # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button#type
            module Type
              extend Telnyx::Internal::Type::Enum

              URL = :URL
              PHONE_NUMBER = :PHONE_NUMBER
              QUICK_REPLY = :QUICK_REPLY
              OTP = :OTP
              COPY_CODE = :COPY_CODE
              FLOW = :FLOW

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Flow action type for FLOW-type buttons.
            #
            # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button#flow_action
            module FlowAction
              extend Telnyx::Internal::Type::Enum

              NAVIGATE = :navigate
              DATA_EXCHANGE = :data_exchange

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button#otp_type
            module OtpType
              extend Telnyx::Internal::Type::Enum

              COPY_CODE = :COPY_CODE
              ONE_TAP = :ONE_TAP

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent#type
          module Type
            extend Telnyx::Internal::Type::Enum

            BUTTONS = :BUTTONS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class WhatsappTemplateCarouselComponent < Telnyx::Internal::Type::BaseModel
          # @!attribute cards
          #   Array of card objects, each with its own components.
          #
          #   @return [Array<Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Card>]
          required :cards,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Card] }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type]
          required :type,
                   enum: -> { Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type }

          # @!method initialize(cards:, type:)
          #   Carousel component for multi-card templates. Each card can contain its own
          #   header, body, and buttons.
          #
          #   @param cards [Array<Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Card>] Array of card objects, each with its own components.
          #
          #   @param type [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type]

          class Card < Telnyx::Internal::Type::BaseModel
            # @!attribute components
            #
            #   @return [Array<Object>, nil]
            optional :components, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(components: nil)
            #   @param components [Array<Object>]
          end

          # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent#type
          module Type
            extend Telnyx::Internal::Type::Enum

            CAROUSEL = :CAROUSEL

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent)]
      end
    end
  end
end
