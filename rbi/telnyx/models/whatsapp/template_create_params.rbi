# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class TemplateCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::TemplateCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Template category: AUTHENTICATION, UTILITY, or MARKETING.
        sig do
          returns(Telnyx::Whatsapp::TemplateCreateParams::Category::OrSymbol)
        end
        attr_accessor :category

        # Template components defining message structure. Passed through to Meta Graph
        # API. Templates with variables must include example values. Supports HEADER,
        # BODY, FOOTER, BUTTONS, CAROUSEL and any future Meta component types.
        sig do
          returns(
            T::Array[
              T.any(
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent,
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent,
                Telnyx::Whatsapp::WhatsappTemplateFooterComponent,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent,
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent
              )
            ]
          )
        end
        attr_accessor :components

        # Template language code (e.g. en_US, es, pt_BR).
        sig { returns(String) }
        attr_accessor :language

        # Template name. Lowercase letters, numbers, and underscores only.
        sig { returns(String) }
        attr_accessor :name

        # The WhatsApp Business Account ID.
        sig { returns(String) }
        attr_accessor :waba_id

        sig do
          params(
            category:
              Telnyx::Whatsapp::TemplateCreateParams::Category::OrSymbol,
            components:
              T::Array[
                T.any(
                  Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::OrHash,
                  Telnyx::Whatsapp::WhatsappTemplateBodyComponent::OrHash,
                  Telnyx::Whatsapp::WhatsappTemplateFooterComponent::OrHash,
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::OrHash,
                  Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::OrHash
                )
              ],
            language: String,
            name: String,
            waba_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Template category: AUTHENTICATION, UTILITY, or MARKETING.
          category:,
          # Template components defining message structure. Passed through to Meta Graph
          # API. Templates with variables must include example values. Supports HEADER,
          # BODY, FOOTER, BUTTONS, CAROUSEL and any future Meta component types.
          components:,
          # Template language code (e.g. en_US, es, pt_BR).
          language:,
          # Template name. Lowercase letters, numbers, and underscores only.
          name:,
          # The WhatsApp Business Account ID.
          waba_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              category:
                Telnyx::Whatsapp::TemplateCreateParams::Category::OrSymbol,
              components:
                T::Array[
                  T.any(
                    Telnyx::Whatsapp::WhatsappTemplateHeaderComponent,
                    Telnyx::Whatsapp::WhatsappTemplateBodyComponent,
                    Telnyx::Whatsapp::WhatsappTemplateFooterComponent,
                    Telnyx::Whatsapp::WhatsappTemplateButtonsComponent,
                    Telnyx::Whatsapp::WhatsappTemplateCarouselComponent
                  )
                ],
              language: String,
              name: String,
              waba_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Template category: AUTHENTICATION, UTILITY, or MARKETING.
        module Category
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Whatsapp::TemplateCreateParams::Category)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MARKETING =
            T.let(
              :MARKETING,
              Telnyx::Whatsapp::TemplateCreateParams::Category::TaggedSymbol
            )
          UTILITY =
            T.let(
              :UTILITY,
              Telnyx::Whatsapp::TemplateCreateParams::Category::TaggedSymbol
            )
          AUTHENTICATION =
            T.let(
              :AUTHENTICATION,
              Telnyx::Whatsapp::TemplateCreateParams::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::TemplateCreateParams::Category::TaggedSymbol
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
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent,
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent,
                Telnyx::Whatsapp::WhatsappTemplateFooterComponent,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent,
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::TemplateCreateParams::Component::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
