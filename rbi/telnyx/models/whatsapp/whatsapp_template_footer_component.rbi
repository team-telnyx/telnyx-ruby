# typed: strong

module Telnyx
  module Models
    WhatsappTemplateFooterComponent = Whatsapp::WhatsappTemplateFooterComponent

    module Whatsapp
      class WhatsappTemplateFooterComponent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::WhatsappTemplateFooterComponent,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Whatsapp::WhatsappTemplateFooterComponent::Type::OrSymbol
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
              Telnyx::Whatsapp::WhatsappTemplateFooterComponent::Type::OrSymbol,
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
                Telnyx::Whatsapp::WhatsappTemplateFooterComponent::Type::OrSymbol,
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
                Telnyx::Whatsapp::WhatsappTemplateFooterComponent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOOTER =
            T.let(
              :FOOTER,
              Telnyx::Whatsapp::WhatsappTemplateFooterComponent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::WhatsappTemplateFooterComponent::Type::TaggedSymbol
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
