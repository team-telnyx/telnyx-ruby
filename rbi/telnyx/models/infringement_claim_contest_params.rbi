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
      sig { returns(T.nilable(T::Array[Telnyx::Document])) }
      attr_reader :documents

      sig { params(documents: T::Array[Telnyx::Document::OrHash]).void }
      attr_writer :documents

      sig do
        params(
          claim_id: String,
          contest_notes: String,
          documents: T::Array[Telnyx::Document::OrHash],
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
            documents: T::Array[Telnyx::Document],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
