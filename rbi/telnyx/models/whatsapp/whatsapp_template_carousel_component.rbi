# typed: strong

module Telnyx
  module Models
    WhatsappTemplateCarouselComponent =
      Whatsapp::WhatsappTemplateCarouselComponent

    module Whatsapp
      class WhatsappTemplateCarouselComponent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::WhatsappTemplateCarouselComponent,
              Telnyx::Internal::AnyHash
            )
          end

        # Array of card objects, each with its own components.
        sig do
          returns(
            T::Array[Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Card]
          )
        end
        attr_accessor :cards

        sig do
          returns(
            Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Type::OrSymbol
          )
        end
        attr_accessor :type

        # Carousel component for multi-card templates. Each card can contain its own
        # header, body, and buttons.
        sig do
          params(
            cards:
              T::Array[
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Card::OrHash
              ],
            type:
              Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Type::OrSymbol
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
                  Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Card
                ],
              type:
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        class Card < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Card,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_reader :components

          sig { params(components: T::Array[T::Hash[Symbol, T.anything]]).void }
          attr_writer :components

          sig do
            params(components: T::Array[T::Hash[Symbol, T.anything]]).returns(
              T.attached_class
            )
          end
          def self.new(components: nil)
          end

          sig do
            override.returns(
              { components: T::Array[T::Hash[Symbol, T.anything]] }
            )
          end
          def to_hash
          end
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CAROUSEL =
            T.let(
              :CAROUSEL,
              Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::WhatsappTemplateCarouselComponent::Type::TaggedSymbol
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
