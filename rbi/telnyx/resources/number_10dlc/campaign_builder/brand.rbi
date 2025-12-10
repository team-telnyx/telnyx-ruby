# typed: strong

module Telnyx
  module Resources
    class Number10dlc
      class CampaignBuilder
        class Brand
          # This endpoint allows you to see whether or not the supplied brand is suitable
          # for your desired campaign use case.
          sig do
            params(
              usecase: String,
              brand_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Number10dlc::CampaignBuilder::BrandRetrieveResponse
            )
          end
          def retrieve(usecase, brand_id:, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
