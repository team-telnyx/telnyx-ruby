# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#update_infringement
    class DirUpdateInfringementParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute dir_id
      #
      #   @return [String]
      required :dir_id, String

      # @!attribute certify_brand_is_accurate
      #   Must be `true`.
      #
      #   @return [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyBrandIsAccurate]
      required :certify_brand_is_accurate,
               enum: -> { Telnyx::DirUpdateInfringementParams::CertifyBrandIsAccurate }

      # @!attribute certify_ip_ownership
      #   Must be `true`.
      #
      #   @return [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyIPOwnership]
      required :certify_ip_ownership, enum: -> { Telnyx::DirUpdateInfringementParams::CertifyIPOwnership }

      # @!attribute certify_no_infringement
      #   Must be `true`.
      #
      #   @return [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyNoInfringement]
      required :certify_no_infringement, enum: -> { Telnyx::DirUpdateInfringementParams::CertifyNoInfringement }

      # @!attribute certify_no_shaft_content
      #   Must be `true`.
      #
      #   @return [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyNoShaftContent]
      required :certify_no_shaft_content,
               enum: -> { Telnyx::DirUpdateInfringementParams::CertifyNoShaftContent }

      # @!attribute infringement_resolution_notes
      #   Explanation of how the infringement concern was addressed.
      #
      #   @return [String]
      required :infringement_resolution_notes, String

      # @!attribute call_reasons
      #
      #   @return [Array<String>, nil]
      optional :call_reasons, Telnyx::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute display_name
      #
      #   @return [String, nil]
      optional :display_name, String, nil?: true

      # @!attribute documents
      #   Append-only supporting documents.
      #
      #   @return [Array<Telnyx::Models::Document>, nil]
      optional :documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Document] }, nil?: true

      # @!attribute logo_url
      #   Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      #   @return [String, nil]
      optional :logo_url, String, nil?: true

      # @!method initialize(dir_id:, certify_brand_is_accurate:, certify_ip_ownership:, certify_no_infringement:, certify_no_shaft_content:, infringement_resolution_notes:, call_reasons: nil, display_name: nil, documents: nil, logo_url: nil, request_options: {})
      #   @param dir_id [String]
      #
      #   @param certify_brand_is_accurate [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyBrandIsAccurate] Must be `true`.
      #
      #   @param certify_ip_ownership [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyIPOwnership] Must be `true`.
      #
      #   @param certify_no_infringement [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyNoInfringement] Must be `true`.
      #
      #   @param certify_no_shaft_content [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyNoShaftContent] Must be `true`.
      #
      #   @param infringement_resolution_notes [String] Explanation of how the infringement concern was addressed.
      #
      #   @param call_reasons [Array<String>, nil]
      #
      #   @param display_name [String, nil]
      #
      #   @param documents [Array<Telnyx::Models::Document>, nil] Append-only supporting documents.
      #
      #   @param logo_url [String, nil] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Must be `true`.
      module CertifyBrandIsAccurate
        extend Telnyx::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      # Must be `true`.
      module CertifyIPOwnership
        extend Telnyx::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      # Must be `true`.
      module CertifyNoInfringement
        extend Telnyx::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      # Must be `true`.
      module CertifyNoShaftContent
        extend Telnyx::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
