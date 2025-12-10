# frozen_string_literal: true

module Telnyx
  module Resources
    class Messaging10dlc
      class Brand
        class ExternalVetting
          # Get list of valid external vetting record for a given brand
          #
          # @overload list(brand_id, request_options: {})
          #
          # @param brand_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Telnyx::Models::Messaging10dlc::Brand::ExternalVettingListResponseItem>]
          #
          # @see Telnyx::Models::Messaging10dlc::Brand::ExternalVettingListParams
          def list(brand_id, params = {})
            @client.request(
              method: :get,
              path: ["10dlc/brand/%1$s/externalVetting", brand_id],
              model: Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Messaging10dlc::Brand::ExternalVettingListResponseItem],
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Messaging10dlc::Brand::ExternalVettingImportsParams} for more
          # details.
          #
          # This operation can be used to import an external vetting record from a
          # TCR-approved vetting provider. If the vetting provider confirms validity of the
          # record, it will be saved with the brand and will be considered for future
          # campaign qualification.
          #
          # @overload imports(brand_id, evp_id:, vetting_id:, vetting_token: nil, request_options: {})
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
          # @return [Telnyx::Models::Messaging10dlc::Brand::ExternalVettingImportsResponse]
          #
          # @see Telnyx::Models::Messaging10dlc::Brand::ExternalVettingImportsParams
          def imports(brand_id, params)
            parsed, options = Telnyx::Messaging10dlc::Brand::ExternalVettingImportsParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["10dlc/brand/%1$s/externalVetting", brand_id],
              body: parsed,
              model: Telnyx::Models::Messaging10dlc::Brand::ExternalVettingImportsResponse,
              options: options
            )
          end

          # Order new external vetting for a brand
          #
          # @overload order(brand_id, evp_id:, vetting_class:, request_options: {})
          #
          # @param brand_id [String]
          #
          # @param evp_id [String] External vetting provider ID for the brand.
          #
          # @param vetting_class [String] Identifies the vetting classification.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Messaging10dlc::Brand::ExternalVettingOrderResponse]
          #
          # @see Telnyx::Models::Messaging10dlc::Brand::ExternalVettingOrderParams
          def order(brand_id, params)
            parsed, options = Telnyx::Messaging10dlc::Brand::ExternalVettingOrderParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["10dlc/brand/%1$s/externalVetting", brand_id],
              body: parsed,
              model: Telnyx::Models::Messaging10dlc::Brand::ExternalVettingOrderResponse,
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
