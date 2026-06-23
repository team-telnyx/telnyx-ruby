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
      sig { returns(T.nilable(T::Array[Telnyx::Document])) }
      attr_reader :documents

      sig { params(documents: T::Array[Telnyx::Document::OrHash]).void }
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
          documents: T::Array[Telnyx::Document::OrHash],
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
            documents: T::Array[Telnyx::Document],
            logo_url: String,
            reselling: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
