# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class MessageTemplateUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::MessageTemplateUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(
              Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::OrSymbol
            )
          )
        end
        attr_reader :category

        sig do
          params(
            category:
              Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::OrSymbol
          ).void
        end
        attr_writer :category

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :components

        sig { params(components: T::Array[T::Hash[Symbol, T.anything]]).void }
        attr_writer :components

        sig do
          params(
            id: String,
            category:
              Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::OrSymbol,
            components: T::Array[T::Hash[Symbol, T.anything]],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, category: nil, components: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              category:
                Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::OrSymbol,
              components: T::Array[T::Hash[Symbol, T.anything]],
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
              T.all(
                Symbol,
                Telnyx::Whatsapp::MessageTemplateUpdateParams::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MARKETING =
            T.let(
              :MARKETING,
              Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::TaggedSymbol
            )
          UTILITY =
            T.let(
              :UTILITY,
              Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::TaggedSymbol
            )
          AUTHENTICATION =
            T.let(
              :AUTHENTICATION,
              Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::TaggedSymbol
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
