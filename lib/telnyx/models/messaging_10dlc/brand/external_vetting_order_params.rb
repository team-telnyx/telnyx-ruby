# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      module Brand
        # @see Telnyx::Resources::Messaging10dlc::Brand::ExternalVetting#order
        class ExternalVettingOrderParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute brand_id
          #
          #   @return [String]
          required :brand_id, String

          # @!attribute evp_id
          #   External vetting provider ID for the brand.
          #
          #   @return [String]
          required :evp_id, String, api_name: :evpId

          # @!attribute vetting_class
          #   Identifies the vetting classification.
          #
          #   @return [String]
          required :vetting_class, String, api_name: :vettingClass

          # @!method initialize(brand_id:, evp_id:, vetting_class:, request_options: {})
          #   @param brand_id [String]
          #
          #   @param evp_id [String] External vetting provider ID for the brand.
          #
          #   @param vetting_class [String] Identifies the vetting classification.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
