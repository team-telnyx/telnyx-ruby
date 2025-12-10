# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class CampaignBuilder
        class Brand
          # This endpoint allows you to see whether or not the supplied brand is suitable
          # for your desired campaign use case.
          #
          # @overload retrieve(usecase, brand_id:, request_options: {})
          #
          # @param usecase [String]
          # @param brand_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Number10dlc::CampaignBuilder::BrandRetrieveResponse]
          #
          # @see Telnyx::Models::Number10dlc::CampaignBuilder::BrandRetrieveParams
          def retrieve(usecase, params)
            parsed, options = Telnyx::Number10dlc::CampaignBuilder::BrandRetrieveParams.dump_request(params)
            brand_id =
              parsed.delete(:brand_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["10dlc/campaignBuilder/brand/%1$s/usecase/%2$s", brand_id, usecase],
              model: Telnyx::Models::Number10dlc::CampaignBuilder::BrandRetrieveResponse,
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
