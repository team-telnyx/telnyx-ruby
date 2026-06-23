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

        # @!attribute certify_brand_is_accurate
        #   Must be `true`.
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

        # @!attribute call_reasons
        #   1–10 reasons your business calls customers. Validate phrasing against
        #   `POST /call_reasons/validate`.
        #
        #   @return [Array<String>, nil]
        optional :call_reasons, Telnyx::Internal::Type::ArrayOf[String]

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

        # @!method initialize(enterprise_id:, authorizer_email:, authorizer_name:, certify_brand_is_accurate:, certify_ip_ownership:, certify_no_shaft_content:, display_name:, call_reasons: nil, documents: nil, logo_url: nil, reselling: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::DirCreateParams} for more details.
        #
        #   @param enterprise_id [String]
        #
        #   @param authorizer_email [String] Contact email of the authorizer. Telnyx may send verification or infringement-no
        #
        #   @param authorizer_name [String] Name of the person at your enterprise who is authorizing this DIR registration.
        #
        #   @param certify_brand_is_accurate [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyBrandIsAccurate] Must be `true`.
        #
        #   @param certify_ip_ownership [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyIPOwnership] Must be `true`. Confirms ownership of any logos/trademarks shown.
        #
        #   @param certify_no_shaft_content [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyNoShaftContent] Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate, Alco
        #
        #   @param display_name [String] Name shown to call recipients. No emoji; not whitespace-only.
        #
        #   @param call_reasons [Array<String>] 1–10 reasons your business calls customers. Validate phrasing against `POST /cal
        #
        #   @param documents [Array<Telnyx::Models::Document>] Supporting documents. Each `document_id` may appear at most once on a DIR.
        #
        #   @param logo_url [String] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        #
        #   @param reselling [Boolean] Set to true if your organization places calls on behalf of other enterprises (BP
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Must be `true`.
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
