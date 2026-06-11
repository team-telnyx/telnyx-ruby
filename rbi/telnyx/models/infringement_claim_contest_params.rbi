# typed: strong

module Telnyx
  module Models
    class InfringementClaimContestParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::InfringementClaimContestParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :claim_id

      # Customer's response to the claim. 10–2000 characters.
      sig { returns(String) }
      attr_accessor :contest_notes

      # Up to 20 supporting documents per submission. `document_id` must be unique
      # within this submission. Documents are aggregated into the claim's
      # `contest_documents` across all submissions.
      sig do
        returns(
          T.nilable(T::Array[Telnyx::InfringementClaimContestParams::Document])
        )
      end
      attr_reader :documents

      sig do
        params(
          documents:
            T::Array[Telnyx::InfringementClaimContestParams::Document::OrHash]
        ).void
      end
      attr_writer :documents

      sig do
        params(
          claim_id: String,
          contest_notes: String,
          documents:
            T::Array[Telnyx::InfringementClaimContestParams::Document::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        claim_id:,
        # Customer's response to the claim. 10–2000 characters.
        contest_notes:,
        # Up to 20 supporting documents per submission. `document_id` must be unique
        # within this submission. Documents are aggregated into the claim's
        # `contest_documents` across all submissions.
        documents: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            claim_id: String,
            contest_notes: String,
            documents:
              T::Array[Telnyx::InfringementClaimContestParams::Document],
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
              Telnyx::InfringementClaimContestParams::Document,
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
            Telnyx::InfringementClaimContestParams::Document::DocumentType::OrSymbol
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
              Telnyx::InfringementClaimContestParams::Document::DocumentType::OrSymbol,
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
                Telnyx::InfringementClaimContestParams::Document::DocumentType::OrSymbol,
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
                Telnyx::InfringementClaimContestParams::Document::DocumentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LETTER_OF_AUTHORIZATION =
            T.let(
              :letter_of_authorization,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          BUSINESS_REGISTRATION =
            T.let(
              :business_registration,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          ARTICLES_OF_INCORPORATION =
            T.let(
              :articles_of_incorporation,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          TAX_DOCUMENT =
            T.let(
              :tax_document,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          EIN_LETTER =
            T.let(
              :ein_letter,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          TRADEMARK_REGISTRATION =
            T.let(
              :trademark_registration,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          WEBSITE_OWNERSHIP =
            T.let(
              :website_ownership,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          BUSINESS_LICENSE =
            T.let(
              :business_license,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          PROFESSIONAL_LICENSE =
            T.let(
              :professional_license,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          GOVERNMENT_ID =
            T.let(
              :government_id,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          UTILITY_BILL =
            T.let(
              :utility_bill,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          BANK_STATEMENT =
            T.let(
              :bank_statement,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::InfringementClaimContestParams::Document::DocumentType::TaggedSymbol
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
