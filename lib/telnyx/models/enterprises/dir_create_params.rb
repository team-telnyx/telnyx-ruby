# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Dir#create
      class DirCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enterprise_id
        #
        #   @return [String]
        required :enterprise_id, String

        # @!attribute authorizer_email
        #   Contact email of the authorizer. Telnyx may send verification or
        #   infringement-notice email here; use a monitored mailbox.
        #
        #   @return [String]
        required :authorizer_email, String

        # @!attribute authorizer_name
        #   Name of the person at your enterprise who is authorizing this DIR registration.
        #   Must be a real individual (used for audit and trademark-claim contests).
        #
        #   @return [String]
        required :authorizer_name, String

        # @!attribute call_reasons
        #   1–10 reasons your business calls customers. Validate phrasing against
        #   `POST /call_reasons/validate`.
        #
        #   @return [Array<String>]
        required :call_reasons, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute certify_brand_is_accurate
        #   Certification that the DIR information is accurate. Must be `true` for the DIR
        #   to be submitted for vetting.
        #
        #   @return [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyBrandIsAccurate]
        required :certify_brand_is_accurate,
                 enum: -> { Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate }

        # @!attribute certify_ip_ownership
        #   Must be `true`. Confirms ownership of any logos/trademarks shown.
        #
        #   @return [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyIPOwnership]
        required :certify_ip_ownership, enum: -> { Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership }

        # @!attribute certify_no_shaft_content
        #   Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
        #   Alcohol, Firearms, Tobacco) where prohibited.
        #
        #   @return [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyNoShaftContent]
        required :certify_no_shaft_content,
                 enum: -> { Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent }

        # @!attribute display_name
        #   Name shown to call recipients. No emoji; not whitespace-only.
        #
        #   @return [String]
        required :display_name, String

        # @!attribute bpo_authorizations
        #   Optional. Approved BPO (Business Process Outsourcer) accounts on your
        #   organization authorized to place branded calls for this DIR, each with the
        #   signed Letter of Authorization the Brand Owner granted it. Each authorization
        #   starts `pending` and takes effect only after an admin reviews its Letter of
        #   Authorization. Omit or send an empty list to authorize no BPO on this DIR.
        #   Maximum 10.
        #
        #   @return [Array<Telnyx::Models::BpoAuthorizationInput>, nil]
        optional :bpo_authorizations, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BpoAuthorizationInput] }

        # @!attribute documents
        #   Supporting documents. Each `document_id` may appear at most once on a DIR.
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
        #   (BPO/reseller).
        #
        #   @return [Boolean, nil]
        optional :reselling, Telnyx::Internal::Type::Boolean

        # @!attribute webhook_url
        #   Optional `https://` URL that receives webhook notifications when this DIR's
        #   compliance review completes (rejection outcomes include structured rejection
        #   reasons). Maximum 2048 characters.
        #
        #   @return [String, nil]
        optional :webhook_url, String, nil?: true

        # @!method initialize(enterprise_id:, authorizer_email:, authorizer_name:, call_reasons:, certify_brand_is_accurate:, certify_ip_ownership:, certify_no_shaft_content:, display_name:, bpo_authorizations: nil, documents: nil, logo_url: nil, reselling: nil, webhook_url: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::DirCreateParams} for more details.
        #
        #   @param enterprise_id [String]
        #
        #   @param authorizer_email [String] Contact email of the authorizer. Telnyx may send verification or infringement-no
        #
        #   @param authorizer_name [String] Name of the person at your enterprise who is authorizing this DIR registration.
        #
        #   @param call_reasons [Array<String>] 1–10 reasons your business calls customers. Validate phrasing against `POST /cal
        #
        #   @param certify_brand_is_accurate [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyBrandIsAccurate] Certification that the DIR information is accurate. Must be `true` for the DIR t
        #
        #   @param certify_ip_ownership [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyIPOwnership] Must be `true`. Confirms ownership of any logos/trademarks shown.
        #
        #   @param certify_no_shaft_content [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyNoShaftContent] Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate, Alco
        #
        #   @param display_name [String] Name shown to call recipients. No emoji; not whitespace-only.
        #
        #   @param bpo_authorizations [Array<Telnyx::Models::BpoAuthorizationInput>] Optional. Approved BPO (Business Process Outsourcer) accounts on your organizati
        #
        #   @param documents [Array<Telnyx::Models::Document>] Supporting documents. Each `document_id` may appear at most once on a DIR.
        #
        #   @param logo_url [String] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        #
        #   @param reselling [Boolean] Set to true if your organization places calls on behalf of other enterprises (BP
        #
        #   @param webhook_url [String, nil] Optional `https://` URL that receives webhook notifications when this DIR's comp
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Certification that the DIR information is accurate. Must be `true` for the DIR
        # to be submitted for vetting.
        module CertifyBrandIsAccurate
          extend Telnyx::Internal::Type::Enum

          TRUE = true

          # @!method self.values
          #   @return [Array<Boolean>]
        end

        # Must be `true`. Confirms ownership of any logos/trademarks shown.
        module CertifyIPOwnership
          extend Telnyx::Internal::Type::Enum

          TRUE = true

          # @!method self.values
          #   @return [Array<Boolean>]
        end

        # Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
        # Alcohol, Firearms, Tobacco) where prohibited.
        module CertifyNoShaftContent
          extend Telnyx::Internal::Type::Enum

          TRUE = true

          # @!method self.values
          #   @return [Array<Boolean>]
        end
      end
    end
  end
end
