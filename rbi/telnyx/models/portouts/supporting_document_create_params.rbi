# typed: strong

module Telnyx
  module Models
    module Portouts
      class SupportingDocumentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Portouts::SupportingDocumentCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # List of supporting documents parameters
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Portouts::SupportingDocumentCreateParams::Document
              ]
            )
          )
        end
        attr_reader :documents

        sig do
          params(
            documents:
              T::Array[
                Telnyx::Portouts::SupportingDocumentCreateParams::Document::OrHash
              ]
          ).void
        end
        attr_writer :documents

        sig do
          params(
            documents:
              T::Array[
                Telnyx::Portouts::SupportingDocumentCreateParams::Document::OrHash
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of supporting documents parameters
          documents: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              documents:
                T::Array[
                  Telnyx::Portouts::SupportingDocumentCreateParams::Document
                ],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Document < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Portouts::SupportingDocumentCreateParams::Document,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the associated document
          sig { returns(String) }
          attr_accessor :document_id

          # Identifies the type of the document
          sig do
            returns(
              Telnyx::Portouts::SupportingDocumentCreateParams::Document::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              document_id: String,
              type:
                Telnyx::Portouts::SupportingDocumentCreateParams::Document::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the associated document
            document_id:,
            # Identifies the type of the document
            type:
          )
          end

          sig do
            override.returns(
              {
                document_id: String,
                type:
                  Telnyx::Portouts::SupportingDocumentCreateParams::Document::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Identifies the type of the document
          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Portouts::SupportingDocumentCreateParams::Document::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOA =
              T.let(
                :loa,
                Telnyx::Portouts::SupportingDocumentCreateParams::Document::Type::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Telnyx::Portouts::SupportingDocumentCreateParams::Document::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Portouts::SupportingDocumentCreateParams::Document::Type::TaggedSymbol
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
end
