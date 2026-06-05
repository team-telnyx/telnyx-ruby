# typed: strong

module Telnyx
  module Models
    module Enterprises
      class DirCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::DirCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :enterprise_id

        # Contact email of the authorizer. Telnyx may send verification or
        # infringement-notice email here; use a monitored mailbox.
        sig { returns(String) }
        attr_accessor :authorizer_email

        # Name of the person at your enterprise who is authorizing this DIR registration.
        # Must be a real individual (used for audit and trademark-claim contests).
        sig { returns(String) }
        attr_accessor :authorizer_name

        # Must be `true`.
        sig do
          returns(
            Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::OrBoolean
          )
        end
        attr_accessor :certify_brand_is_accurate

        # Must be `true`. Confirms ownership of any logos/trademarks shown.
        sig do
          returns(
            Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::OrBoolean
          )
        end
        attr_accessor :certify_ip_ownership

        # Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
        # Alcohol, Firearms, Tobacco) where prohibited.
        sig do
          returns(
            Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::OrBoolean
          )
        end
        attr_accessor :certify_no_shaft_content

        # Name shown to call recipients. No emoji; not whitespace-only.
        sig { returns(String) }
        attr_accessor :display_name

        # 1–10 reasons your business calls customers. Validate phrasing against
        # `POST /call_reasons/validate`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_reasons

        sig { params(call_reasons: T::Array[String]).void }
        attr_writer :call_reasons

        # Supporting documents. Each `document_id` may appear at most once on a DIR.
        sig do
          returns(
            T.nilable(T::Array[Telnyx::Enterprises::DirCreateParams::Document])
          )
        end
        attr_reader :documents

        sig do
          params(
            documents:
              T::Array[Telnyx::Enterprises::DirCreateParams::Document::OrHash]
          ).void
        end
        attr_writer :documents

        # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        sig { returns(T.nilable(String)) }
        attr_reader :logo_url

        sig { params(logo_url: String).void }
        attr_writer :logo_url

        # Set to true if your organization places calls on behalf of other enterprises
        # (BPO/reseller).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reselling

        sig { params(reselling: T::Boolean).void }
        attr_writer :reselling

        sig do
          params(
            enterprise_id: String,
            authorizer_email: String,
            authorizer_name: String,
            certify_brand_is_accurate:
              Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::OrBoolean,
            certify_ip_ownership:
              Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::OrBoolean,
            certify_no_shaft_content:
              Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::OrBoolean,
            display_name: String,
            call_reasons: T::Array[String],
            documents:
              T::Array[Telnyx::Enterprises::DirCreateParams::Document::OrHash],
            logo_url: String,
            reselling: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          enterprise_id:,
          # Contact email of the authorizer. Telnyx may send verification or
          # infringement-notice email here; use a monitored mailbox.
          authorizer_email:,
          # Name of the person at your enterprise who is authorizing this DIR registration.
          # Must be a real individual (used for audit and trademark-claim contests).
          authorizer_name:,
          # Must be `true`.
          certify_brand_is_accurate:,
          # Must be `true`. Confirms ownership of any logos/trademarks shown.
          certify_ip_ownership:,
          # Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
          # Alcohol, Firearms, Tobacco) where prohibited.
          certify_no_shaft_content:,
          # Name shown to call recipients. No emoji; not whitespace-only.
          display_name:,
          # 1–10 reasons your business calls customers. Validate phrasing against
          # `POST /call_reasons/validate`.
          call_reasons: nil,
          # Supporting documents. Each `document_id` may appear at most once on a DIR.
          documents: nil,
          # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
          logo_url: nil,
          # Set to true if your organization places calls on behalf of other enterprises
          # (BPO/reseller).
          reselling: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enterprise_id: String,
              authorizer_email: String,
              authorizer_name: String,
              certify_brand_is_accurate:
                Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::OrBoolean,
              certify_ip_ownership:
                Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::OrBoolean,
              certify_no_shaft_content:
                Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::OrBoolean,
              display_name: String,
              call_reasons: T::Array[String],
              documents:
                T::Array[Telnyx::Enterprises::DirCreateParams::Document],
              logo_url: String,
              reselling: T::Boolean,
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
                Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end

        # Must be `true`. Confirms ownership of any logos/trademarks shown.
        module CertifyIPOwnership
          extend Telnyx::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end

        # Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
        # Alcohol, Firearms, Tobacco) where prohibited.
        module CertifyNoShaftContent
          extend Telnyx::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::TaggedBoolean
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
                Telnyx::Enterprises::DirCreateParams::Document,
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
              Telnyx::Enterprises::DirCreateParams::Document::DocumentType::OrSymbol
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
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::OrSymbol,
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
                  Telnyx::Enterprises::DirCreateParams::Document::DocumentType::OrSymbol,
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
                  Telnyx::Enterprises::DirCreateParams::Document::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LETTER_OF_AUTHORIZATION =
              T.let(
                :letter_of_authorization,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            BUSINESS_REGISTRATION =
              T.let(
                :business_registration,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            ARTICLES_OF_INCORPORATION =
              T.let(
                :articles_of_incorporation,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            TAX_DOCUMENT =
              T.let(
                :tax_document,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            EIN_LETTER =
              T.let(
                :ein_letter,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            TRADEMARK_REGISTRATION =
              T.let(
                :trademark_registration,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            WEBSITE_OWNERSHIP =
              T.let(
                :website_ownership,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            BUSINESS_LICENSE =
              T.let(
                :business_license,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            PROFESSIONAL_LICENSE =
              T.let(
                :professional_license,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            GOVERNMENT_ID =
              T.let(
                :government_id,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            UTILITY_BILL =
              T.let(
                :utility_bill,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            BANK_STATEMENT =
              T.let(
                :bank_statement,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Enterprises::DirCreateParams::Document::DocumentType::TaggedSymbol
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
