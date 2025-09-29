# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class AdditionalDocumentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::AdditionalDocumentCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument
              ]
            )
          )
        end
        attr_reader :additional_documents

        sig do
          params(
            additional_documents:
              T::Array[
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::OrHash
              ]
          ).void
        end
        attr_writer :additional_documents

        sig do
          params(
            additional_documents:
              T::Array[
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::OrHash
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(additional_documents: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              additional_documents:
                T::Array[
                  Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument
                ],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AdditionalDocument < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument,
                Telnyx::Internal::AnyHash
              )
            end

          # The document identification
          sig { returns(T.nilable(String)) }
          attr_reader :document_id

          sig { params(document_id: String).void }
          attr_writer :document_id

          # The type of document being created.
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::OrSymbol
              )
            )
          end
          attr_reader :document_type

          sig do
            params(
              document_type:
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::OrSymbol
            ).void
          end
          attr_writer :document_type

          sig do
            params(
              document_id: String,
              document_type:
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The document identification
            document_id: nil,
            # The type of document being created.
            document_type: nil
          )
          end

          sig do
            override.returns(
              {
                document_id: String,
                document_type:
                  Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The type of document being created.
          module DocumentType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOA =
              T.let(
                :loa,
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::TaggedSymbol
              )
            CSR =
              T.let(
                :csr,
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType::TaggedSymbol
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
