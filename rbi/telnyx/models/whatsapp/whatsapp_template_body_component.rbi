# typed: strong

module Telnyx
  module Models
    WhatsappTemplateBodyComponent = Whatsapp::WhatsappTemplateBodyComponent

    module Whatsapp
      class WhatsappTemplateBodyComponent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::WhatsappTemplateBodyComponent,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Type::OrSymbol
          )
        end
        attr_accessor :type

        # Sample values for body variables. Required when body text contains parameters.
        sig do
          returns(
            T.nilable(Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Example)
          )
        end
        attr_reader :example

        sig do
          params(
            example:
              Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Example::OrHash
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
              Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Type::OrSymbol,
            example:
              Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Example::OrHash,
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
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Type::OrSymbol,
              example: Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Example,
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
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BODY =
            T.let(
              :BODY,
              Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Type::TaggedSymbol
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
                Telnyx::Whatsapp::WhatsappTemplateBodyComponent::Example,
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
    end
  end
end
