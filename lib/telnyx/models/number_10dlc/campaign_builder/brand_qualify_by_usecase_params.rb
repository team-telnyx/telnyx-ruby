# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module CampaignBuilder
        # @see Telnyx::Resources::Number10dlc::CampaignBuilder::Brand#qualify_by_usecase
        class BrandQualifyByUsecaseParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute brand_id
          #
          #   @return [String]
          required :brand_id, String

          # @!method initialize(brand_id:, request_options: {})
          #   @param brand_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
