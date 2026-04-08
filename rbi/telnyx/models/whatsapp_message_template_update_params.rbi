# typed: strong

module Telnyx
  module Models
    class WhatsappMessageTemplateUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WhatsappMessageTemplateUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          T.nilable(
            Telnyx::WhatsappMessageTemplateUpdateParams::Category::OrSymbol
          )
        )
      end
      attr_reader :category

      sig do
        params(
          category:
            Telnyx::WhatsappMessageTemplateUpdateParams::Category::OrSymbol
        ).void
      end
      attr_writer :category

      # Updated template components. Same structure as the create request.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent
              )
            ]
          )
        )
      end
      attr_reader :components

      sig do
        params(
          components:
            T::Array[
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::OrHash
              )
            ]
        ).void
      end
      attr_writer :components

      sig do
        params(
          id: String,
          category:
            Telnyx::WhatsappMessageTemplateUpdateParams::Category::OrSymbol,
          components:
            T::Array[
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::OrHash
              )
            ],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        category: nil,
        # Updated template components. Same structure as the create request.
        components: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            category:
              Telnyx::WhatsappMessageTemplateUpdateParams::Category::OrSymbol,
            components:
              T::Array[
                T.any(
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent
                )
              ],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Category
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::WhatsappMessageTemplateUpdateParams::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARKETING =
          T.let(
            :MARKETING,
            Telnyx::WhatsappMessageTemplateUpdateParams::Category::TaggedSymbol
          )
        UTILITY =
          T.let(
            :UTILITY,
            Telnyx::WhatsappMessageTemplateUpdateParams::Category::TaggedSymbol
          )
        AUTHENTICATION =
          T.let(
            :AUTHENTICATION,
            Telnyx::WhatsappMessageTemplateUpdateParams::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::WhatsappMessageTemplateUpdateParams::Category::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # A template component. Additional Meta component types not listed here are also
      # accepted.
      module Component
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent,
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent,
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent,
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent,
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent
            )
          end

        class WhatsappTemplateHeaderComponent < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent,
                Telnyx::Internal::AnyHash
              )
            end

          # Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
          # LOCATION.
          sig do
            returns(
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::OrSymbol
            )
          end
          attr_accessor :format_

          sig do
            returns(
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Sample values for header variables.
          sig do
            returns(
              T.nilable(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Example
              )
            )
          end
          attr_reader :example

          sig do
            params(
              example:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Example::OrHash
            ).void
          end
          attr_writer :example

          # Header text. Required when format is TEXT. Supports one variable ({{1}}).
          # Variables cannot be at the start or end.
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          # Optional header displayed at the top of the message.
          sig do
            params(
              format_:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::OrSymbol,
              type:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type::OrSymbol,
              example:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Example::OrHash,
              text: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
            # LOCATION.
            format_:,
            type:,
            # Sample values for header variables.
            example: nil,
            # Header text. Required when format is TEXT. Supports one variable ({{1}}).
            # Variables cannot be at the start or end.
            text: nil
          )
          end

          sig do
            override.returns(
              {
                format_:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::OrSymbol,
                type:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type::OrSymbol,
                example:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Example,
                text: String
              }
            )
          end
          def to_hash
          end

          # Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
          # LOCATION.
          module Format
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TEXT =
              T.let(
                :TEXT,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
              )
            IMAGE =
              T.let(
                :IMAGE,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
              )
            VIDEO =
              T.let(
                :VIDEO,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
              )
            DOCUMENT =
              T.let(
                :DOCUMENT,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
              )
            LOCATION =
              T.let(
                :LOCATION,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HEADER =
              T.let(
                :HEADER,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Example < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::Example,
                  Telnyx::Internal::AnyHash
                )
              end

            # Media handle for IMAGE, VIDEO, or DOCUMENT headers.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :header_handle

            sig { params(header_handle: T::Array[String]).void }
            attr_writer :header_handle

            # Sample values for text header variables.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :header_text

            sig { params(header_text: T::Array[String]).void }
            attr_writer :header_text

            # Sample values for header variables.
            sig do
              params(
                header_handle: T::Array[String],
                header_text: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # Media handle for IMAGE, VIDEO, or DOCUMENT headers.
              header_handle: nil,
              # Sample values for text header variables.
              header_text: nil
            )
            end

            sig do
              override.returns(
                {
                  header_handle: T::Array[String],
                  header_text: T::Array[String]
                }
              )
            end
            def to_hash
            end
          end
        end

        class WhatsappTemplateBodyComponent < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Sample values for body variables. Required when body text contains parameters.
          sig do
            returns(
              T.nilable(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Example
              )
            )
          end
          attr_reader :example

          sig do
            params(
              example:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Example::OrHash
            ).void
          end
          attr_writer :example

          # Body text content. Use {{1}}, {{2}}, etc. for variable placeholders. Required
          # for MARKETING and UTILITY templates. Optional for AUTHENTICATION templates where
          # Meta provides the built-in OTP body.
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          # The main text content of the message. Supports multiple variable parameters
          # ({{1}}, {{2}}, etc.). Variables cannot be at the start or end. Maximum 1024
          # characters.
          sig do
            params(
              type:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type::OrSymbol,
              example:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Example::OrHash,
              text: String
            ).returns(T.attached_class)
          end
          def self.new(
            type:,
            # Sample values for body variables. Required when body text contains parameters.
            example: nil,
            # Body text content. Use {{1}}, {{2}}, etc. for variable placeholders. Required
            # for MARKETING and UTILITY templates. Optional for AUTHENTICATION templates where
            # Meta provides the built-in OTP body.
            text: nil
          )
          end

          sig do
            override.returns(
              {
                type:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type::OrSymbol,
                example:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Example,
                text: String
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
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BODY =
              T.let(
                :BODY,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Example < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::Example,
                  Telnyx::Internal::AnyHash
                )
              end

            # Array containing one array of sample values, one per variable in order.
            sig { returns(T.nilable(T::Array[T::Array[String]])) }
            attr_reader :body_text

            sig { params(body_text: T::Array[T::Array[String]]).void }
            attr_writer :body_text

            # Sample values for body variables. Required when body text contains parameters.
            sig do
              params(body_text: T::Array[T::Array[String]]).returns(
                T.attached_class
              )
            end
            def self.new(
              # Array containing one array of sample values, one per variable in order.
              body_text: nil
            )
            end

            sig { override.returns({ body_text: T::Array[T::Array[String]] }) }
            def to_hash
            end
          end
        end

        class WhatsappTemplateFooterComponent < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type::OrSymbol
            )
          end
          attr_accessor :type

          # OTP code expiration time in minutes. Used in AUTHENTICATION template footers
          # instead of free-form text.
          sig { returns(T.nilable(Integer)) }
          attr_reader :code_expiration_minutes

          sig { params(code_expiration_minutes: Integer).void }
          attr_writer :code_expiration_minutes

          # Footer text. Maximum 60 characters. For non-authentication templates.
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          # Optional footer displayed at the bottom of the message. Does not support
          # variables.
          sig do
            params(
              type:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type::OrSymbol,
              code_expiration_minutes: Integer,
              text: String
            ).returns(T.attached_class)
          end
          def self.new(
            type:,
            # OTP code expiration time in minutes. Used in AUTHENTICATION template footers
            # instead of free-form text.
            code_expiration_minutes: nil,
            # Footer text. Maximum 60 characters. For non-authentication templates.
            text: nil
          )
          end

          sig do
            override.returns(
              {
                type:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type::OrSymbol,
                code_expiration_minutes: Integer,
                text: String
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
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FOOTER =
              T.let(
                :FOOTER,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class WhatsappTemplateButtonsComponent < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent,
                Telnyx::Internal::AnyHash
              )
            end

          # Array of button objects. Meta supports various combinations of button types.
          sig do
            returns(
              T::Array[
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button
              ]
            )
          end
          attr_accessor :buttons

          sig do
            returns(
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Optional interactive buttons. Maximum 3 buttons per template.
          sig do
            params(
              buttons:
                T::Array[
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OrHash
                ],
              type:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type::OrSymbol
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
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button
                  ],
                type:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Button < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::OrSymbol
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
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction::OrSymbol
                )
              )
            end
            attr_reader :flow_action

            sig do
              params(
                flow_action:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction::OrSymbol
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
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType::OrSymbol
                )
              )
            end
            attr_reader :otp_type

            sig do
              params(
                otp_type:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType::OrSymbol
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
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::OrSymbol,
                autofill_text: String,
                example: T::Array[String],
                flow_action:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction::OrSymbol,
                flow_id: String,
                navigate_screen: String,
                otp_type:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType::OrSymbol,
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
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::OrSymbol,
                  autofill_text: String,
                  example: T::Array[String],
                  flow_action:
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction::OrSymbol,
                  flow_id: String,
                  navigate_screen: String,
                  otp_type:
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType::OrSymbol,
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
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              URL =
                T.let(
                  :URL,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
                )
              PHONE_NUMBER =
                T.let(
                  :PHONE_NUMBER,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
                )
              QUICK_REPLY =
                T.let(
                  :QUICK_REPLY,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
                )
              OTP =
                T.let(
                  :OTP,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
                )
              COPY_CODE =
                T.let(
                  :COPY_CODE,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
                )
              FLOW =
                T.let(
                  :FLOW,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::Type::TaggedSymbol
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
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NAVIGATE =
                T.let(
                  :navigate,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction::TaggedSymbol
                )
              DATA_EXCHANGE =
                T.let(
                  :data_exchange,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::FlowAction::TaggedSymbol
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
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COPY_CODE =
                T.let(
                  :COPY_CODE,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType::TaggedSymbol
                )
              ONE_TAP =
                T.let(
                  :ONE_TAP,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Button::OtpType::TaggedSymbol
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
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUTTONS =
              T.let(
                :BUTTONS,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class WhatsappTemplateCarouselComponent < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent,
                Telnyx::Internal::AnyHash
              )
            end

          # Array of card objects, each with its own components.
          sig do
            returns(
              T::Array[
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Card
              ]
            )
          end
          attr_accessor :cards

          sig do
            returns(
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Carousel component for multi-card templates. Each card can contain its own
          # header, body, and buttons.
          sig do
            params(
              cards:
                T::Array[
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Card::OrHash
                ],
              type:
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of card objects, each with its own components.
            cards:,
            type:
          )
          end

          sig do
            override.returns(
              {
                cards:
                  T::Array[
                    Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Card
                  ],
                type:
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Card < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Card,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :components

            sig { params(components: T::Array[T.anything]).void }
            attr_writer :components

            sig do
              params(components: T::Array[T.anything]).returns(T.attached_class)
            end
            def self.new(components: nil)
            end

            sig { override.returns({ components: T::Array[T.anything] }) }
            def to_hash
            end
          end

          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CAROUSEL =
              T.let(
                :CAROUSEL,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::WhatsappMessageTemplateUpdateParams::Component::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
