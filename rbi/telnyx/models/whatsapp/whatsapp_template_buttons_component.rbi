# typed: strong

module Telnyx
  module Models
    WhatsappTemplateButtonsComponent =
      Whatsapp::WhatsappTemplateButtonsComponent

    module Whatsapp
      class WhatsappTemplateButtonsComponent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::WhatsappTemplateButtonsComponent,
              Telnyx::Internal::AnyHash
            )
          end

        # Array of button objects. Meta supports various combinations of button types.
        sig do
          returns(
            T::Array[Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button]
          )
        end
        attr_accessor :buttons

        sig do
          returns(
            Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Type::OrSymbol
          )
        end
        attr_accessor :type

        # Optional interactive buttons. Maximum 3 buttons per template.
        sig do
          params(
            buttons:
              T::Array[
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OrHash
              ],
            type:
              Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of button objects. Meta supports various combinations of button types.
          buttons:,
          type:
        )
        end

        sig do
          override.returns(
            {
              buttons:
                T::Array[
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button
                ],
              type:
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        class Button < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Custom autofill button text for ONE_TAP OTP buttons.
          sig { returns(T.nilable(String)) }
          attr_reader :autofill_text

          sig { params(autofill_text: String).void }
          attr_writer :autofill_text

          # Sample values for URL variable.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :example

          sig { params(example: T::Array[String]).void }
          attr_writer :example

          # Flow action type for FLOW-type buttons.
          sig do
            returns(
              T.nilable(
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction::OrSymbol
              )
            )
          end
          attr_reader :flow_action

          sig do
            params(
              flow_action:
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction::OrSymbol
            ).void
          end
          attr_writer :flow_action

          # Flow ID for FLOW-type buttons.
          sig { returns(T.nilable(String)) }
          attr_reader :flow_id

          sig { params(flow_id: String).void }
          attr_writer :flow_id

          # Target screen name for FLOW buttons with navigate action.
          sig { returns(T.nilable(String)) }
          attr_reader :navigate_screen

          sig { params(navigate_screen: String).void }
          attr_writer :navigate_screen

          sig do
            returns(
              T.nilable(
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType::OrSymbol
              )
            )
          end
          attr_reader :otp_type

          sig do
            params(
              otp_type:
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType::OrSymbol
            ).void
          end
          attr_writer :otp_type

          # Android package name. Required for ONE_TAP OTP buttons.
          sig { returns(T.nilable(String)) }
          attr_reader :package_name

          sig { params(package_name: String).void }
          attr_writer :package_name

          # Phone number in E.164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Android app signing key hash. Required for ONE_TAP OTP buttons.
          sig { returns(T.nilable(String)) }
          attr_reader :signature_hash

          sig { params(signature_hash: String).void }
          attr_writer :signature_hash

          # Button label text. Maximum 25 characters. Required for URL, PHONE_NUMBER, and
          # QUICK_REPLY buttons. Not required for OTP buttons (Meta supplies the label).
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          # URL for URL-type buttons. Supports one variable ({{1}}).
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          # Whether zero-tap terms have been accepted.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :zero_tap_terms_accepted

          sig { params(zero_tap_terms_accepted: T::Boolean).void }
          attr_writer :zero_tap_terms_accepted

          sig do
            params(
              type:
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::OrSymbol,
              autofill_text: String,
              example: T::Array[String],
              flow_action:
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction::OrSymbol,
              flow_id: String,
              navigate_screen: String,
              otp_type:
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType::OrSymbol,
              package_name: String,
              phone_number: String,
              signature_hash: String,
              text: String,
              url: String,
              zero_tap_terms_accepted: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            type:,
            # Custom autofill button text for ONE_TAP OTP buttons.
            autofill_text: nil,
            # Sample values for URL variable.
            example: nil,
            # Flow action type for FLOW-type buttons.
            flow_action: nil,
            # Flow ID for FLOW-type buttons.
            flow_id: nil,
            # Target screen name for FLOW buttons with navigate action.
            navigate_screen: nil,
            otp_type: nil,
            # Android package name. Required for ONE_TAP OTP buttons.
            package_name: nil,
            # Phone number in E.164 format.
            phone_number: nil,
            # Android app signing key hash. Required for ONE_TAP OTP buttons.
            signature_hash: nil,
            # Button label text. Maximum 25 characters. Required for URL, PHONE_NUMBER, and
            # QUICK_REPLY buttons. Not required for OTP buttons (Meta supplies the label).
            text: nil,
            # URL for URL-type buttons. Supports one variable ({{1}}).
            url: nil,
            # Whether zero-tap terms have been accepted.
            zero_tap_terms_accepted: nil
          )
          end

          sig do
            override.returns(
              {
                type:
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::OrSymbol,
                autofill_text: String,
                example: T::Array[String],
                flow_action:
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction::OrSymbol,
                flow_id: String,
                navigate_screen: String,
                otp_type:
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType::OrSymbol,
                package_name: String,
                phone_number: String,
                signature_hash: String,
                text: String,
                url: String,
                zero_tap_terms_accepted: T::Boolean
              }
            )
          end
          def to_hash
          end

          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            URL =
              T.let(
                :URL,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
              )
            PHONE_NUMBER =
              T.let(
                :PHONE_NUMBER,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
              )
            QUICK_REPLY =
              T.let(
                :QUICK_REPLY,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
              )
            OTP =
              T.let(
                :OTP,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
              )
            COPY_CODE =
              T.let(
                :COPY_CODE,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
              )
            FLOW =
              T.let(
                :FLOW,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Flow action type for FLOW-type buttons.
          module FlowAction
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NAVIGATE =
              T.let(
                :navigate,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction::TaggedSymbol
              )
            DATA_EXCHANGE =
              T.let(
                :data_exchange,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::FlowAction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module OtpType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COPY_CODE =
              T.let(
                :COPY_CODE,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType::TaggedSymbol
              )
            ONE_TAP =
              T.let(
                :ONE_TAP,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Button::OtpType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUTTONS =
            T.let(
              :BUTTONS,
              Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
