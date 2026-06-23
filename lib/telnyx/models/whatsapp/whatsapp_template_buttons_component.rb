# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      class WhatsappTemplateButtonsComponent < Telnyx::Internal::Type::BaseModel
        # @!attribute buttons
        #   Array of button objects. Meta supports various combinations of button types.
        #
        #   @return [Array<Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button>]
        required :buttons,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button] }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Type]
        required :type, enum: -> { Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Type }

        # @!method initialize(buttons:, type:)
        #   Optional interactive buttons. Maximum 3 buttons per template.
        #
        #   @param buttons [Array<Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button>] Array of button objects. Meta supports various combinations of button types.
        #
        #   @param type [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Type]

        class Button < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type]
          required :type, enum: -> { Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type }

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
          #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction, nil]
          optional :flow_action, enum: -> { Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction }

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
          #   @return [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType, nil]
          optional :otp_type, enum: -> { Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType }

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
          #   {Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button} for more
          #   details.
          #
          #   @param type [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type]
          #
          #   @param autofill_text [String] Custom autofill button text for ONE_TAP OTP buttons.
          #
          #   @param example [Array<String>] Sample values for URL variable.
          #
          #   @param flow_action [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction] Flow action type for FLOW-type buttons.
          #
          #   @param flow_id [String] Flow ID for FLOW-type buttons.
          #
          #   @param navigate_screen [String] Target screen name for FLOW buttons with navigate action.
          #
          #   @param otp_type [Symbol, Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType]
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

          # @see Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button#type
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
          # @see Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button#flow_action
          module FlowAction
            extend Telnyx::Internal::Type::Enum

            NAVIGATE = :navigate
            DATA_EXCHANGE = :data_exchange

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent::Button#otp_type
          module OtpType
            extend Telnyx::Internal::Type::Enum

            COPY_CODE = :COPY_CODE
            ONE_TAP = :ONE_TAP

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::Whatsapp::WhatsappTemplateButtonsComponent#type
        module Type
          extend Telnyx::Internal::Type::Enum

          BUTTONS = :BUTTONS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    WhatsappTemplateButtonsComponent = Whatsapp::WhatsappTemplateButtonsComponent
  end
end
