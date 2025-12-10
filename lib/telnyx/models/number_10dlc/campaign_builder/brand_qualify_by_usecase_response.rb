# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module CampaignBuilder
        # @see Telnyx::Resources::Number10dlc::CampaignBuilder::Brand#qualify_by_usecase
        class BrandQualifyByUsecaseResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute annual_fee
          #   Campaign annual subscription fee
          #
          #   @return [Float, nil]
          optional :annual_fee, Float, api_name: :annualFee

          # @!attribute max_sub_usecases
          #   Maximum number of sub-usecases declaration required.
          #
          #   @return [Integer, nil]
          optional :max_sub_usecases, Integer, api_name: :maxSubUsecases

          # @!attribute min_sub_usecases
          #   Minimum number of sub-usecases declaration required.
          #
          #   @return [Integer, nil]
          optional :min_sub_usecases, Integer, api_name: :minSubUsecases

          # @!attribute mno_metadata
          #   Map of usecase metadata for each MNO. Key is the network ID of the MNO (e.g.
          #   10017), Value is the mno metadata for the usecase.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :mno_metadata,
                   Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
                   api_name: :mnoMetadata

          # @!attribute monthly_fee
          #   Campaign monthly subscription fee
          #
          #   @return [Float, nil]
          optional :monthly_fee, Float, api_name: :monthlyFee

          # @!attribute quarterly_fee
          #   Campaign quarterly subscription fee
          #
          #   @return [Float, nil]
          optional :quarterly_fee, Float, api_name: :quarterlyFee

          # @!attribute usecase
          #   Campaign usecase
          #
          #   @return [String, nil]
          optional :usecase, String

          # @!method initialize(annual_fee: nil, max_sub_usecases: nil, min_sub_usecases: nil, mno_metadata: nil, monthly_fee: nil, quarterly_fee: nil, usecase: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Number10dlc::CampaignBuilder::BrandQualifyByUsecaseResponse}
          #   for more details.
          #
          #   @param annual_fee [Float] Campaign annual subscription fee
          #
          #   @param max_sub_usecases [Integer] Maximum number of sub-usecases declaration required.
          #
          #   @param min_sub_usecases [Integer] Minimum number of sub-usecases declaration required.
          #
          #   @param mno_metadata [Hash{Symbol=>Object}] Map of usecase metadata for each MNO. Key is the network ID of the MNO (e.g. 100
          #
          #   @param monthly_fee [Float] Campaign monthly subscription fee
          #
          #   @param quarterly_fee [Float] Campaign quarterly subscription fee
          #
          #   @param usecase [String] Campaign usecase
        end
      end
    end
  end
end
