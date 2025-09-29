# typed: strong

module Telnyx
  module Models
    module Portouts
      class SupportingDocumentListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Portouts::SupportingDocumentListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::Portouts::SupportingDocumentListResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::Portouts::SupportingDocumentListResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Portouts::SupportingDocumentListResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Supporting document creation timestamp in ISO 8601 format
          sig { returns(String) }
          attr_accessor :created_at

          # Identifies the associated document
          sig { returns(String) }
          attr_accessor :document_id

          # Supporting document last changed timestamp in ISO 8601 format
          sig { returns(String) }
          attr_accessor :updated_at

          # Identifies the associated port request
          sig { returns(String) }
          attr_accessor :portout_id

          # Identifies the type of the resource.
          sig { returns(String) }
          attr_accessor :record_type

          # Identifies the type of the document
          sig do
            returns(
              Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              id: String,
              created_at: String,
              document_id: String,
              portout_id: String,
              record_type: String,
              type:
                Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type::OrSymbol,
              updated_at: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Supporting document creation timestamp in ISO 8601 format
            created_at:,
            # Identifies the associated document
            document_id:,
            # Identifies the associated port request
            portout_id:,
            # Identifies the type of the resource.
            record_type:,
            # Identifies the type of the document
            type:,
            # Supporting document last changed timestamp in ISO 8601 format
            updated_at:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: String,
                document_id: String,
                portout_id: String,
                record_type: String,
                type:
                  Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type::TaggedSymbol,
                updated_at: String
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
                  Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOA =
              T.let(
                :loa,
                Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type::TaggedSymbol
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
