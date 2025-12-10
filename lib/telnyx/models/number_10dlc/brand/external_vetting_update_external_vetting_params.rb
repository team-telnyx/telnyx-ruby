# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module Brand
        # @see Telnyx::Resources::Number10dlc::Brand::ExternalVetting#update_external_vetting
        class ExternalVettingUpdateExternalVettingParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute evp_id
          #   External vetting provider ID for the brand.
          #
          #   @return [String]
          required :evp_id, String, api_name: :evpId

          # @!attribute vetting_id
          #   Unique ID that identifies a vetting transaction performed by a vetting provider.
          #   This ID is provided by the vetting provider at time of vetting.
          #
          #   @return [String]
          required :vetting_id, String, api_name: :vettingId

          # @!attribute vetting_token
          #   Required by some providers for vetting record confirmation.
          #
          #   @return [String, nil]
          optional :vetting_token, String, api_name: :vettingToken

          # @!method initialize(evp_id:, vetting_id:, vetting_token: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Number10dlc::Brand::ExternalVettingUpdateExternalVettingParams}
          #   for more details.
          #
          #   @param evp_id [String] External vetting provider ID for the brand.
          #
          #   @param vetting_id [String] Unique ID that identifies a vetting transaction performed by a vetting provider.
          #
          #   @param vetting_token [String] Required by some providers for vetting record confirmation.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
