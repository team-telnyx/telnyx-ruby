# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class AdditionalDocumentListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::AdditionalDocumentListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig { returns(T.nilable(Telnyx::PaginationMeta)) }
        attr_reader :meta

        sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::OrHash
              ],
            meta: Telnyx::PaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data
                ],
              meta: Telnyx::PaginationMeta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Uniquely identifies this additional document
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The content type of the related document.
          sig { returns(T.nilable(String)) }
          attr_reader :content_type

          sig { params(content_type: String).void }
          attr_writer :content_type

          # ISO 8601 formatted date indicating when the resource was created.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Identifies the associated document
          sig { returns(T.nilable(String)) }
          attr_reader :document_id

          sig { params(document_id: String).void }
          attr_writer :document_id

          # Identifies the type of additional document
          sig do
            returns(
              T.nilable(
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::TaggedSymbol
              )
            )
          end
          attr_reader :document_type

          sig do
            params(
              document_type:
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::OrSymbol
            ).void
          end
          attr_writer :document_type

          # The filename of the related document.
          sig { returns(T.nilable(String)) }
          attr_reader :filename

          sig { params(filename: String).void }
          attr_writer :filename

          # Identifies the associated porting order
          sig { returns(T.nilable(String)) }
          attr_reader :porting_order_id

          sig { params(porting_order_id: String).void }
          attr_writer :porting_order_id

          # ISO 8601 formatted date indicating when the resource was updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              id: String,
              content_type: String,
              created_at: Time,
              document_id: String,
              document_type:
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::OrSymbol,
              filename: String,
              porting_order_id: String,
              record_type: String,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Uniquely identifies this additional document
            id: nil,
            # The content type of the related document.
            content_type: nil,
            # ISO 8601 formatted date indicating when the resource was created.
            created_at: nil,
            # Identifies the associated document
            document_id: nil,
            # Identifies the type of additional document
            document_type: nil,
            # The filename of the related document.
            filename: nil,
            # Identifies the associated porting order
            porting_order_id: nil,
            # Identifies the type of the resource.
            record_type: nil,
            # ISO 8601 formatted date indicating when the resource was updated.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content_type: String,
                created_at: Time,
                document_id: String,
                document_type:
                  Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::TaggedSymbol,
                filename: String,
                porting_order_id: String,
                record_type: String,
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          # Identifies the type of additional document
          module DocumentType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOA =
              T.let(
                :loa,
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::TaggedSymbol
              )
            CSR =
              T.let(
                :csr,
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::PortingOrders::AdditionalDocumentListResponse::Data::DocumentType::TaggedSymbol
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
