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

      # @!attribute call_reasons
      #   1–10 reasons your business calls customers. Validate phrasing against
      #   `POST /call_reasons/validate`.
      #
      #   @return [Array<String>, nil]
      optional :call_reasons, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute display_name
      #   Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
      #
      #   @return [String, nil]
      optional :display_name, String

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

      # @!method initialize(dir_id:, authorizer_email: nil, authorizer_name: nil, call_reasons: nil, display_name: nil, logo_url: nil, reselling: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirUpdateParams} for more details.
      #
      #   @param dir_id [String]
      #
      #   @param authorizer_email [String] Contact email of the authorizer. Telnyx may send verification or infringement no
      #
      #   @param authorizer_name [String] Name of the person at your enterprise authorizing this DIR. Must be a real indiv
      #
      #   @param call_reasons [Array<String>] 1–10 reasons your business calls customers. Validate phrasing against `POST /cal
      #
      #   @param display_name [String] Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
      #
      #   @param logo_url [String] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      #   @param reselling [Boolean] Set to true if your organization places calls on behalf of other enterprises (BP
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
