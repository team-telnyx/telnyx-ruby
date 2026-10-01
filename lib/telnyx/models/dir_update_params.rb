# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#update
    class DirUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute dir_id
      #
      #   @return [String]
      required :dir_id, String

      # @!attribute authorizer_email
      #   Contact email of the authorizer. Telnyx may send verification or infringement
      #   notices here.
      #
      #   @return [String, nil]
      optional :authorizer_email, String

      # @!attribute authorizer_name
      #   Name of the person at your enterprise authorizing this DIR. Must be a real
      #   individual.
      #
      #   @return [String, nil]
      optional :authorizer_name, String

      # @!attribute bpo_authorizations
      #   Optional. Replace this DIR's authorized BPO (Business Process Outsourcer)
      #   accounts with these, each with its signed Letter of Authorization. The supplied
      #   list replaces the current one: a BPO left out has its authorization removed, and
      #   a new BPO (or a changed Letter of Authorization) is created `pending` admin
      #   review. Send an empty list to clear all authorizations; omit the field to leave
      #   them unchanged. Editing this list does not re-vet the DIR. Maximum 10.
      #
      #   @return [Array<Telnyx::Models::BpoAuthorizationInput>, nil]
      optional :bpo_authorizations, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BpoAuthorizationInput] }

      # @!attribute call_reasons
      #   1–10 reasons your business calls customers. Validate phrasing against
      #   `POST /call_reasons/validate`.
      #
      #   @return [Array<String>, nil]
      optional :call_reasons, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute certify_brand_is_accurate
      #   Certification that the DIR information is accurate. Must be `true` for the DIR
      #   to be submitted for vetting.
      #
      #   @return [Boolean, nil]
      optional :certify_brand_is_accurate, Telnyx::Internal::Type::Boolean

      # @!attribute certify_ip_ownership
      #   Certification of ownership of any logos/trademarks shown. Must be `true` for the
      #   DIR to be submitted for vetting.
      #
      #   @return [Boolean, nil]
      optional :certify_ip_ownership, Telnyx::Internal::Type::Boolean

      # @!attribute certify_no_shaft_content
      #   Certification that this DIR is not used for SHAFT content (Sex, Hate, Alcohol,
      #   Firearms, Tobacco) where prohibited. Must be `true` for the DIR to be submitted
      #   for vetting.
      #
      #   @return [Boolean, nil]
      optional :certify_no_shaft_content, Telnyx::Internal::Type::Boolean

      # @!attribute display_name
      #   Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute documents
      #   Additional supporting documents to attach. Append-only: existing documents are
      #   never removed or replaced, and an empty or omitted list is a no-op. Each
      #   `document_id` may appear at most once on a DIR.
      #
      #   @return [Array<Telnyx::Models::Document>, nil]
      optional :documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Document] }

      # @!attribute logo_url
      #   Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      #   @return [String, nil]
      optional :logo_url, String

      # @!attribute reselling
      #   Set to true if your organization places calls on behalf of other enterprises
      #   (BPO/reseller). Updating this triggers re-vetting on next submit.
      #
      #   @return [Boolean, nil]
      optional :reselling, Telnyx::Internal::Type::Boolean

      # @!attribute webhook_url
      #   Optional `https://` URL that receives webhook notifications when this DIR's
      #   compliance review completes. Send `null` to clear. Changing only this field on a
      #   `verified` DIR does not re-vet it. Maximum 2048 characters.
      #
      #   @return [String, nil]
      optional :webhook_url, String, nil?: true

      # @!method initialize(dir_id:, authorizer_email: nil, authorizer_name: nil, bpo_authorizations: nil, call_reasons: nil, certify_brand_is_accurate: nil, certify_ip_ownership: nil, certify_no_shaft_content: nil, display_name: nil, documents: nil, logo_url: nil, reselling: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirUpdateParams} for more details.
      #
      #   @param dir_id [String]
      #
      #   @param authorizer_email [String] Contact email of the authorizer. Telnyx may send verification or infringement no
      #
      #   @param authorizer_name [String] Name of the person at your enterprise authorizing this DIR. Must be a real indiv
      #
      #   @param bpo_authorizations [Array<Telnyx::Models::BpoAuthorizationInput>] Optional. Replace this DIR's authorized BPO (Business Process Outsourcer) accoun
      #
      #   @param call_reasons [Array<String>] 1–10 reasons your business calls customers. Validate phrasing against `POST /cal
      #
      #   @param certify_brand_is_accurate [Boolean] Certification that the DIR information is accurate. Must be `true` for the DIR t
      #
      #   @param certify_ip_ownership [Boolean] Certification of ownership of any logos/trademarks shown. Must be `true` for the
      #
      #   @param certify_no_shaft_content [Boolean] Certification that this DIR is not used for SHAFT content (Sex, Hate, Alcohol, F
      #
      #   @param display_name [String] Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
      #
      #   @param documents [Array<Telnyx::Models::Document>] Additional supporting documents to attach. Append-only: existing documents are n
      #
      #   @param logo_url [String] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      #   @param reselling [Boolean] Set to true if your organization places calls on behalf of other enterprises (BP
      #
      #   @param webhook_url [String, nil] Optional `https://` URL that receives webhook notifications when this DIR's comp
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
