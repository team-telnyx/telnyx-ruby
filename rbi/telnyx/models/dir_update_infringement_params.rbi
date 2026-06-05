# typed: strong

module Telnyx
  module Models
    class DirUpdateInfringementParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DirUpdateInfringementParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :dir_id

      # Must be `true`.
      sig do
        returns(
          Telnyx::DirUpdateInfringementParams::CertifyBrandIsAccurate::OrBoolean
        )
      end
      attr_accessor :certify_brand_is_accurate

      # Must be `true`.
      sig do
        returns(
          Telnyx::DirUpdateInfringementParams::CertifyIPOwnership::OrBoolean
        )
      end
      attr_accessor :certify_ip_ownership

      # Must be `true`.
      sig do
        returns(
          Telnyx::DirUpdateInfringementParams::CertifyNoInfringement::OrBoolean
        )
      end
      attr_accessor :certify_no_infringement

      # Must be `true`.
      sig do
        returns(
          Telnyx::DirUpdateInfringementParams::CertifyNoShaftContent::OrBoolean
        )
      end
      attr_accessor :certify_no_shaft_content

      # Explanation of how the infringement concern was addressed.
      sig { returns(String) }
      attr_accessor :infringement_resolution_notes

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :call_reasons

      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      # Append-only supporting documents.
      sig do
        returns(
          T.nilable(T::Array[Telnyx::DirUpdateInfringementParams::Document])
        )
      end
      attr_accessor :documents

      # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      sig { returns(T.nilable(String)) }
      attr_accessor :logo_url

      sig do
        params(
          dir_id: String,
          certify_brand_is_accurate:
            Telnyx::DirUpdateInfringementParams::CertifyBrandIsAccurate::OrBoolean,
          certify_ip_ownership:
            Telnyx::DirUpdateInfringementParams::CertifyIPOwnership::OrBoolean,
          certify_no_infringement:
            Telnyx::DirUpdateInfringementParams::CertifyNoInfringement::OrBoolean,
          certify_no_shaft_content:
            Telnyx::DirUpdateInfringementParams::CertifyNoShaftContent::OrBoolean,
          infringement_resolution_notes: String,
          call_reasons: T.nilable(T::Array[String]),
          display_name: T.nilable(String),
          documents:
            T.nilable(
              T::Array[Telnyx::DirUpdateInfringementParams::Document::OrHash]
            ),
          logo_url: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        dir_id:,
        # Must be `true`.
        certify_brand_is_accurate:,
        # Must be `true`.
        certify_ip_ownership:,
        # Must be `true`.
        certify_no_infringement:,
        # Must be `true`.
        certify_no_shaft_content:,
        # Explanation of how the infringement concern was addressed.
        infringement_resolution_notes:,
        call_reasons: nil,
        display_name: nil,
        # Append-only supporting documents.
        documents: nil,
        # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        logo_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            dir_id: String,
            certify_brand_is_accurate:
              Telnyx::DirUpdateInfringementParams::CertifyBrandIsAccurate::OrBoolean,
            certify_ip_ownership:
              Telnyx::DirUpdateInfringementParams::CertifyIPOwnership::OrBoolean,
            certify_no_infringement:
              Telnyx::DirUpdateInfringementParams::CertifyNoInfringement::OrBoolean,
            certify_no_shaft_content:
              Telnyx::DirUpdateInfringementParams::CertifyNoShaftContent::OrBoolean,
            infringement_resolution_notes: String,
            call_reasons: T.nilable(T::Array[String]),
            display_name: T.nilable(String),
            documents:
              T.nilable(
                T::Array[Telnyx::DirUpdateInfringementParams::Document]
              ),
            logo_url: T.nilable(String),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Must be `true`.
      module CertifyBrandIsAccurate
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Telnyx::DirUpdateInfringementParams::CertifyBrandIsAccurate
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::DirUpdateInfringementParams::CertifyBrandIsAccurate::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DirUpdateInfringementParams::CertifyBrandIsAccurate::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # Must be `true`.
      module CertifyIPOwnership
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Telnyx::DirUpdateInfringementParams::CertifyIPOwnership
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::DirUpdateInfringementParams::CertifyIPOwnership::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DirUpdateInfringementParams::CertifyIPOwnership::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # Must be `true`.
      module CertifyNoInfringement
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Telnyx::DirUpdateInfringementParams::CertifyNoInfringement
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::DirUpdateInfringementParams::CertifyNoInfringement::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DirUpdateInfringementParams::CertifyNoInfringement::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # Must be `true`.
      module CertifyNoShaftContent
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Telnyx::DirUpdateInfringementParams::CertifyNoShaftContent
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::DirUpdateInfringementParams::CertifyNoShaftContent::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DirUpdateInfringementParams::CertifyNoShaftContent::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      class Document < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DirUpdateInfringementParams::Document,
              Telnyx::Internal::AnyHash
            )
          end

        # Id returned by the Telnyx Documents API after you upload the file (upload via
        # `POST /v2/documents`; see https://developers.telnyx.com/api/documents).
        sig { returns(String) }
        attr_accessor :document_id

        # Type of supporting document. Pick the closest match to what the file actually
        # contains; `other` triggers manual vetting and may slow approval. The matching
        # short_name reference list is at `GET /v2/dir/document_types`.
        sig do
          returns(
            Telnyx::DirUpdateInfringementParams::Document::DocumentType::OrSymbol
          )
        end
        attr_accessor :document_type

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            document_id: String,
            document_type:
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::OrSymbol,
            description: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Id returned by the Telnyx Documents API after you upload the file (upload via
          # `POST /v2/documents`; see https://developers.telnyx.com/api/documents).
          document_id:,
          # Type of supporting document. Pick the closest match to what the file actually
          # contains; `other` triggers manual vetting and may slow approval. The matching
          # short_name reference list is at `GET /v2/dir/document_types`.
          document_type:,
          description: nil
        )
        end

        sig do
          override.returns(
            {
              document_id: String,
              document_type:
                Telnyx::DirUpdateInfringementParams::Document::DocumentType::OrSymbol,
              description: String
            }
          )
        end
        def to_hash
        end

        # Type of supporting document. Pick the closest match to what the file actually
        # contains; `other` triggers manual vetting and may slow approval. The matching
        # short_name reference list is at `GET /v2/dir/document_types`.
        module DocumentType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::DirUpdateInfringementParams::Document::DocumentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LETTER_OF_AUTHORIZATION =
            T.let(
              :letter_of_authorization,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          BUSINESS_REGISTRATION =
            T.let(
              :business_registration,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          ARTICLES_OF_INCORPORATION =
            T.let(
              :articles_of_incorporation,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          TAX_DOCUMENT =
            T.let(
              :tax_document,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          EIN_LETTER =
            T.let(
              :ein_letter,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          TRADEMARK_REGISTRATION =
            T.let(
              :trademark_registration,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          WEBSITE_OWNERSHIP =
            T.let(
              :website_ownership,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          BUSINESS_LICENSE =
            T.let(
              :business_license,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          PROFESSIONAL_LICENSE =
            T.let(
              :professional_license,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          GOVERNMENT_ID =
            T.let(
              :government_id,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          UTILITY_BILL =
            T.let(
              :utility_bill,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          BANK_STATEMENT =
            T.let(
              :bank_statement,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::DirUpdateInfringementParams::Document::DocumentType::TaggedSymbol
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
