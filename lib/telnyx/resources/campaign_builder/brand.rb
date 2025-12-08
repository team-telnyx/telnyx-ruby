# frozen_string_literal: true

module Telnyx
  module Resources
    class CampaignBuilder
      class Brand
        # This endpoint allows you to see whether or not the supplied brand is suitable
        # for your desired campaign use case.
        #
        # @overload qualify_by_usecase(usecase, brand_id:, request_options: {})
        #
        # @param usecase [String]
        # @param brand_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::CampaignBuilder::BrandQualifyByUsecaseResponse]
        #
        # @see Telnyx::Models::CampaignBuilder::BrandQualifyByUsecaseParams
        def qualify_by_usecase(usecase, params)
          parsed, options = Telnyx::CampaignBuilder::BrandQualifyByUsecaseParams.dump_request(params)
          brand_id =
            parsed.delete(:brand_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["10dlc/campaignBuilder/brand/%1$s/usecase/%2$s", brand_id, usecase],
            model: Telnyx::Models::CampaignBuilder::BrandQualifyByUsecaseResponse,
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
