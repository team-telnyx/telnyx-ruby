# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module Campaign
        # @see Telnyx::Resources::Number10dlc::Campaign::Usecase#retrieve_cost
        class UsecaseRetrieveCostResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute campaign_usecase
          #
          #   @return [String]
          required :campaign_usecase, String, api_name: :campaignUsecase

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute monthly_cost
          #
          #   @return [String]
          required :monthly_cost, String, api_name: :monthlyCost

          # @!attribute up_front_cost
          #
          #   @return [String]
          required :up_front_cost, String, api_name: :upFrontCost

          # @!method initialize(campaign_usecase:, description:, monthly_cost:, up_front_cost:)
          #   @param campaign_usecase [String]
          #   @param description [String]
          #   @param monthly_cost [String]
          #   @param up_front_cost [String]
        end
      end
    end
  end
end
