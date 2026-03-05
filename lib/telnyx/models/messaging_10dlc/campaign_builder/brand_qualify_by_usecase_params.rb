# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      module CampaignBuilder
        # @see Telnyx::Resources::Messaging10dlc::CampaignBuilder::Brand#qualify_by_usecase
        class BrandQualifyByUsecaseParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute brand_id
          #
          #   @return [String]
          required :brand_id, String

          # @!attribute usecase
          #
          #   @return [String]
          required :usecase, String

          # @!method initialize(brand_id:, usecase:, request_options: {})
          #   @param brand_id [String]
          #   @param usecase [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
