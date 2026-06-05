# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberAddParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::PhoneNumberAddParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # Supporting documents covering this batch. At least one entry with
        # `document_type: letter_of_authorization` is required — the LOA authorises Telnyx
        # to register these numbers under the DIR. Each `document_id` must come from the
        # Telnyx Documents API. Additional document types (e.g. business registration) may
        # be included alongside the LOA.
        sig { returns(T::Array[Telnyx::Dir::PhoneNumberAddParams::Document]) }
        attr_accessor :documents

        # 1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with
        # `1`.
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        sig do
          params(
            dir_id: String,
            documents:
              T::Array[Telnyx::Dir::PhoneNumberAddParams::Document::OrHash],
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # Supporting documents covering this batch. At least one entry with
          # `document_type: letter_of_authorization` is required — the LOA authorises Telnyx
          # to register these numbers under the DIR. Each `document_id` must come from the
          # Telnyx Documents API. Additional document types (e.g. business registration) may
          # be included alongside the LOA.
          documents:,
          # 1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with
          # `1`.
          phone_numbers:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              documents: T::Array[Telnyx::Dir::PhoneNumberAddParams::Document],
              phone_numbers: T::Array[String],
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
                Telnyx::Dir::PhoneNumberAddParams::Document,
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
              Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::OrSymbol
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
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::OrSymbol,
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
                  Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::OrSymbol,
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
                  Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LETTER_OF_AUTHORIZATION =
              T.let(
                :letter_of_authorization,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            BUSINESS_REGISTRATION =
              T.let(
                :business_registration,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            ARTICLES_OF_INCORPORATION =
              T.let(
                :articles_of_incorporation,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            TAX_DOCUMENT =
              T.let(
                :tax_document,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            EIN_LETTER =
              T.let(
                :ein_letter,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            TRADEMARK_REGISTRATION =
              T.let(
                :trademark_registration,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            WEBSITE_OWNERSHIP =
              T.let(
                :website_ownership,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            BUSINESS_LICENSE =
              T.let(
                :business_license,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            PROFESSIONAL_LICENSE =
              T.let(
                :professional_license,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            GOVERNMENT_ID =
              T.let(
                :government_id,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            UTILITY_BILL =
              T.let(
                :utility_bill,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            BANK_STATEMENT =
              T.let(
                :bank_statement,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType::TaggedSymbol
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
