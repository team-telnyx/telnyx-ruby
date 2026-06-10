# typed: strong

module Telnyx
  module Models
    class DirUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DirUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :dir_id

      # Contact email of the authorizer. Telnyx may send verification or infringement
      # notices here.
      sig { returns(T.nilable(String)) }
      attr_reader :authorizer_email

      sig { params(authorizer_email: String).void }
      attr_writer :authorizer_email

      # Name of the person at your enterprise authorizing this DIR. Must be a real
      # individual.
      sig { returns(T.nilable(String)) }
      attr_reader :authorizer_name

      sig { params(authorizer_name: String).void }
      attr_writer :authorizer_name

      # 1–10 reasons your business calls customers. Validate phrasing against
      # `POST /call_reasons/validate`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :call_reasons

      sig { params(call_reasons: T::Array[String]).void }
      attr_writer :call_reasons

      # Certification that the DIR information is accurate. Must be `true` for the DIR
      # to be submitted for vetting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :certify_brand_is_accurate

      sig { params(certify_brand_is_accurate: T::Boolean).void }
      attr_writer :certify_brand_is_accurate

      # Certification of ownership of any logos/trademarks shown. Must be `true` for the
      # DIR to be submitted for vetting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :certify_ip_ownership

      sig { params(certify_ip_ownership: T::Boolean).void }
      attr_writer :certify_ip_ownership

      # Certification that this DIR is not used for SHAFT content (Sex, Hate, Alcohol,
      # Firearms, Tobacco) where prohibited. Must be `true` for the DIR to be submitted
      # for vetting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :certify_no_shaft_content

      sig { params(certify_no_shaft_content: T::Boolean).void }
      attr_writer :certify_no_shaft_content

      # Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # Additional supporting documents to attach. Append-only: existing documents are
      # never removed or replaced, and an empty or omitted list is a no-op. Each
      # `document_id` may appear at most once on a DIR.
      sig { returns(T.nilable(T::Array[Telnyx::DirUpdateParams::Document])) }
      attr_reader :documents

      sig do
        params(
          documents: T::Array[Telnyx::DirUpdateParams::Document::OrHash]
        ).void
      end
      attr_writer :documents

      # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      sig { returns(T.nilable(String)) }
      attr_reader :logo_url

      sig { params(logo_url: String).void }
      attr_writer :logo_url

      # Set to true if your organization places calls on behalf of other enterprises
      # (BPO/reseller). Updating this triggers re-vetting on next submit.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :reselling

      sig { params(reselling: T::Boolean).void }
      attr_writer :reselling

      sig do
        params(
          dir_id: String,
          authorizer_email: String,
          authorizer_name: String,
          call_reasons: T::Array[String],
          certify_brand_is_accurate: T::Boolean,
          certify_ip_ownership: T::Boolean,
          certify_no_shaft_content: T::Boolean,
          display_name: String,
          documents: T::Array[Telnyx::DirUpdateParams::Document::OrHash],
          logo_url: String,
          reselling: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        dir_id:,
        # Contact email of the authorizer. Telnyx may send verification or infringement
        # notices here.
        authorizer_email: nil,
        # Name of the person at your enterprise authorizing this DIR. Must be a real
        # individual.
        authorizer_name: nil,
        # 1–10 reasons your business calls customers. Validate phrasing against
        # `POST /call_reasons/validate`.
        call_reasons: nil,
        # Certification that the DIR information is accurate. Must be `true` for the DIR
        # to be submitted for vetting.
        certify_brand_is_accurate: nil,
        # Certification of ownership of any logos/trademarks shown. Must be `true` for the
        # DIR to be submitted for vetting.
        certify_ip_ownership: nil,
        # Certification that this DIR is not used for SHAFT content (Sex, Hate, Alcohol,
        # Firearms, Tobacco) where prohibited. Must be `true` for the DIR to be submitted
        # for vetting.
        certify_no_shaft_content: nil,
        # Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
        display_name: nil,
        # Additional supporting documents to attach. Append-only: existing documents are
        # never removed or replaced, and an empty or omitted list is a no-op. Each
        # `document_id` may appear at most once on a DIR.
        documents: nil,
        # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        logo_url: nil,
        # Set to true if your organization places calls on behalf of other enterprises
        # (BPO/reseller). Updating this triggers re-vetting on next submit.
        reselling: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            dir_id: String,
            authorizer_email: String,
            authorizer_name: String,
            call_reasons: T::Array[String],
            certify_brand_is_accurate: T::Boolean,
            certify_ip_ownership: T::Boolean,
            certify_no_shaft_content: T::Boolean,
            display_name: String,
            documents: T::Array[Telnyx::DirUpdateParams::Document],
            logo_url: String,
            reselling: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Document < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::DirUpdateParams::Document, Telnyx::Internal::AnyHash)
          end

        # Id returned by the Telnyx Documents API after you upload the file (upload via
        # `POST /v2/documents`; see https://developers.telnyx.com/api/documents).
        sig { returns(String) }
        attr_accessor :document_id

        # Type of supporting document. Pick the closest match to what the file actually
        # contains; `other` triggers manual vetting and may slow approval. The matching
        # short_name reference list is at `GET /v2/dir/document_types`.
        sig do
          returns(Telnyx::DirUpdateParams::Document::DocumentType::OrSymbol)
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
              Telnyx::DirUpdateParams::Document::DocumentType::OrSymbol,
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
                Telnyx::DirUpdateParams::Document::DocumentType::OrSymbol,
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
              T.all(Symbol, Telnyx::DirUpdateParams::Document::DocumentType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LETTER_OF_AUTHORIZATION =
            T.let(
              :letter_of_authorization,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          BUSINESS_REGISTRATION =
            T.let(
              :business_registration,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          ARTICLES_OF_INCORPORATION =
            T.let(
              :articles_of_incorporation,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          TAX_DOCUMENT =
            T.let(
              :tax_document,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          EIN_LETTER =
            T.let(
              :ein_letter,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          TRADEMARK_REGISTRATION =
            T.let(
              :trademark_registration,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          WEBSITE_OWNERSHIP =
            T.let(
              :website_ownership,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          BUSINESS_LICENSE =
            T.let(
              :business_license,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          PROFESSIONAL_LICENSE =
            T.let(
              :professional_license,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          GOVERNMENT_ID =
            T.let(
              :government_id,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          UTILITY_BILL =
            T.let(
              :utility_bill,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          BANK_STATEMENT =
            T.let(
              :bank_statement,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::DirUpdateParams::Document::DocumentType::TaggedSymbol
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
