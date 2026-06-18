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
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent,
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent,
                Telnyx::Whatsapp::WhatsappTemplateFooterComponent,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent,
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent
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
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::OrHash,
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent::OrHash,
                Telnyx::Whatsapp::WhatsappTemplateFooterComponent::OrHash,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::OrHash,
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::OrHash
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
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::OrHash,
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent::OrHash,
                Telnyx::Whatsapp::WhatsappTemplateFooterComponent::OrHash,
                Telnyx::Whatsapp::WhatsappTemplateButtonsComponent::OrHash,
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::OrHash
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
                  Telnyx::Whatsapp::WhatsappTemplateHeaderComponent,
                  Telnyx::Whatsapp::WhatsappTemplateBodyComponent,
                  Telnyx::Whatsapp::WhatsappTemplateFooterComponent,
                  Telnyx::Whatsapp::WhatsappTemplateButtonsComponent,
                  Telnyx::Whatsapp::WhatsappTemplateCarouselComponent
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
