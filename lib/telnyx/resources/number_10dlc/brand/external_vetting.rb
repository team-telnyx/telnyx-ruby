# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class Brand
        class ExternalVetting
          # Order new external vetting for a brand
          #
          # @overload external_vetting(brand_id, evp_id:, vetting_class:, request_options: {})
          #
          # @param brand_id [String]
          #
          # @param evp_id [String] External vetting provider ID for the brand.
          #
          # @param vetting_class [String] Identifies the vetting classification.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Number10dlc::Brand::ExternalVettingExternalVettingResponse]
          #
          # @see Telnyx::Models::Number10dlc::Brand::ExternalVettingExternalVettingParams
          def external_vetting(brand_id, params)
            parsed, options = Telnyx::Number10dlc::Brand::ExternalVettingExternalVettingParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["10dlc/brand/%1$s/externalVetting", brand_id],
              body: parsed,
              model: Telnyx::Models::Number10dlc::Brand::ExternalVettingExternalVettingResponse,
              options: options
            )
          end

          # Get list of valid external vetting record for a given brand
          #
          # @overload retrieve_external_vetting(brand_id, request_options: {})
          #
          # @param brand_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Telnyx::Models::Number10dlc::Brand::ExternalVettingRetrieveExternalVettingResponseItem>]
          #
          # @see Telnyx::Models::Number10dlc::Brand::ExternalVettingRetrieveExternalVettingParams
          def retrieve_external_vetting(brand_id, params = {})
            @client.request(
              method: :get,
              path: ["10dlc/brand/%1$s/externalVetting", brand_id],
              model: Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Number10dlc::Brand::ExternalVettingRetrieveExternalVettingResponseItem],
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Number10dlc::Brand::ExternalVettingUpdateExternalVettingParams}
          # for more details.
          #
          # This operation can be used to import an external vetting record from a
          # TCR-approved vetting provider. If the vetting provider confirms validity of the
          # record, it will be saved with the brand and will be considered for future
          # campaign qualification.
          #
          # @overload update_external_vetting(brand_id, evp_id:, vetting_id:, vetting_token: nil, request_options: {})
          #
          # @param brand_id [String]
          #
          # @param evp_id [String] External vetting provider ID for the brand.
          #
          # @param vetting_id [String] Unique ID that identifies a vetting transaction performed by a vetting provider.
          #
          # @param vetting_token [String] Required by some providers for vetting record confirmation.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Number10dlc::Brand::ExternalVettingUpdateExternalVettingResponse]
          #
          # @see Telnyx::Models::Number10dlc::Brand::ExternalVettingUpdateExternalVettingParams
          def update_external_vetting(brand_id, params)
            parsed, options =
              Telnyx::Number10dlc::Brand::ExternalVettingUpdateExternalVettingParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["10dlc/brand/%1$s/externalVetting", brand_id],
              body: parsed,
              model: Telnyx::Models::Number10dlc::Brand::ExternalVettingUpdateExternalVettingResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
