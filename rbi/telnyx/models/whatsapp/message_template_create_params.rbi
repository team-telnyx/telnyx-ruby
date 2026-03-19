# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class MessageTemplateCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::MessageTemplateCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Whatsapp::MessageTemplateCreateParams::Category::OrSymbol
          )
        end
        attr_accessor :category

        sig { returns(T::Array[T.anything]) }
        attr_accessor :components

        sig { returns(String) }
        attr_accessor :language

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :waba_id

        sig do
          params(
            category:
              Telnyx::Whatsapp::MessageTemplateCreateParams::Category::OrSymbol,
            components: T::Array[T.anything],
            language: String,
            name: String,
            waba_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          category:,
          components:,
          language:,
          name:,
          waba_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              category:
                Telnyx::Whatsapp::MessageTemplateCreateParams::Category::OrSymbol,
              components: T::Array[T.anything],
              language: String,
              name: String,
              waba_id: String,
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
                Telnyx::Whatsapp::MessageTemplateCreateParams::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MARKETING =
            T.let(
              :MARKETING,
              Telnyx::Whatsapp::MessageTemplateCreateParams::Category::TaggedSymbol
            )
          UTILITY =
            T.let(
              :UTILITY,
              Telnyx::Whatsapp::MessageTemplateCreateParams::Category::TaggedSymbol
            )
          AUTHENTICATION =
            T.let(
              :AUTHENTICATION,
              Telnyx::Whatsapp::MessageTemplateCreateParams::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::MessageTemplateCreateParams::Category::TaggedSymbol
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
