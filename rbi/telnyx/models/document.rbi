# typed: strong

module Telnyx
  module Models
    class Document < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Document, Telnyx::Internal::AnyHash) }

      # Id returned by the Telnyx Documents API after you upload the file (upload via
      # `POST /v2/documents`; see https://developers.telnyx.com/api/documents).
      sig { returns(String) }
      attr_accessor :document_id

      # Type of supporting document. Pick the closest match to what the file actually
      # contains; `other` triggers manual vetting and may slow approval. The matching
      # short_name reference list is at `GET /v2/dir/document_types`.
      sig { returns(Telnyx::Document::DocumentType::OrSymbol) }
      attr_accessor :document_type

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        params(
          document_id: String,
          document_type: Telnyx::Document::DocumentType::OrSymbol,
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
            document_type: Telnyx::Document::DocumentType::OrSymbol,
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
          T.type_alias { T.all(Symbol, Telnyx::Document::DocumentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LETTER_OF_AUTHORIZATION =
          T.let(
            :letter_of_authorization,
            Telnyx::Document::DocumentType::TaggedSymbol
          )
        BUSINESS_REGISTRATION =
          T.let(
            :business_registration,
            Telnyx::Document::DocumentType::TaggedSymbol
          )
        ARTICLES_OF_INCORPORATION =
          T.let(
            :articles_of_incorporation,
            Telnyx::Document::DocumentType::TaggedSymbol
          )
        TAX_DOCUMENT =
          T.let(:tax_document, Telnyx::Document::DocumentType::TaggedSymbol)
        EIN_LETTER =
          T.let(:ein_letter, Telnyx::Document::DocumentType::TaggedSymbol)
        TRADEMARK_REGISTRATION =
          T.let(
            :trademark_registration,
            Telnyx::Document::DocumentType::TaggedSymbol
          )
        WEBSITE_OWNERSHIP =
          T.let(
            :website_ownership,
            Telnyx::Document::DocumentType::TaggedSymbol
          )
        BUSINESS_LICENSE =
          T.let(:business_license, Telnyx::Document::DocumentType::TaggedSymbol)
        PROFESSIONAL_LICENSE =
          T.let(
            :professional_license,
            Telnyx::Document::DocumentType::TaggedSymbol
          )
        GOVERNMENT_ID =
          T.let(:government_id, Telnyx::Document::DocumentType::TaggedSymbol)
        UTILITY_BILL =
          T.let(:utility_bill, Telnyx::Document::DocumentType::TaggedSymbol)
        BANK_STATEMENT =
          T.let(:bank_statement, Telnyx::Document::DocumentType::TaggedSymbol)
        OTHER = T.let(:other, Telnyx::Document::DocumentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Document::DocumentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
