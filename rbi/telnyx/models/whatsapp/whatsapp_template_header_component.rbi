# typed: strong

module Telnyx
  module Models
    WhatsappTemplateHeaderComponent = Whatsapp::WhatsappTemplateHeaderComponent

    module Whatsapp
      class WhatsappTemplateHeaderComponent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent,
              Telnyx::Internal::AnyHash
            )
          end

        # Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
        # LOCATION.
        sig do
          returns(
            Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::OrSymbol
          )
        end
        attr_accessor :file_format

        sig do
          returns(
            Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Type::OrSymbol
          )
        end
        attr_accessor :type

        # Sample values for header variables.
        sig do
          returns(
            T.nilable(
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Example
            )
          )
        end
        attr_reader :example

        sig do
          params(
            example:
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Example::OrHash
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
            file_format:
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::OrSymbol,
            type:
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Type::OrSymbol,
            example:
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Example::OrHash,
            text: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Header format type: TEXT (supports one variable), IMAGE, VIDEO, DOCUMENT, or
          # LOCATION.
          file_format:,
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
              file_format:
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::OrSymbol,
              type:
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Type::OrSymbol,
              example:
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Example,
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
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :TEXT,
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
            )
          LOCATION =
            T.let(
              :LOCATION,
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Format::TaggedSymbol
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
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HEADER =
            T.let(
              :HEADER,
              Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Type::TaggedSymbol
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
                Telnyx::Whatsapp::WhatsappTemplateHeaderComponent::Example,
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
              { header_handle: T::Array[String], header_text: T::Array[String] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
