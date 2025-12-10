# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Brand#list
      class BrandListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute brand_id
        #   Filter results by the Telnyx Brand id
        #
        #   @return [String, nil]
        optional :brand_id, String

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!attribute entity_type
        #
        #   @return [String, nil]
        optional :entity_type, String

        # @!attribute page
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!attribute records_per_page
        #   number of records per page. maximum of 500
        #
        #   @return [Integer, nil]
        optional :records_per_page, Integer

        # @!attribute sort
        #   Specifies the sort order for results. If not given, results are sorted by
        #   createdAt in descending order.
        #
        #   @return [Symbol, Telnyx::Models::Messaging10dlc::BrandListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::Messaging10dlc::BrandListParams::Sort }

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute tcr_brand_id
        #   Filter results by the TCR Brand id
        #
        #   @return [String, nil]
        optional :tcr_brand_id, String

        # @!method initialize(brand_id: nil, country: nil, display_name: nil, entity_type: nil, page: nil, records_per_page: nil, sort: nil, state: nil, tcr_brand_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Messaging10dlc::BrandListParams} for more details.
        #
        #   @param brand_id [String] Filter results by the Telnyx Brand id
        #
        #   @param country [String]
        #
        #   @param display_name [String]
        #
        #   @param entity_type [String]
        #
        #   @param page [Integer]
        #
        #   @param records_per_page [Integer] number of records per page. maximum of 500
        #
        #   @param sort [Symbol, Telnyx::Models::Messaging10dlc::BrandListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        #   @param state [String]
        #
        #   @param tcr_brand_id [String] Filter results by the TCR Brand id
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Specifies the sort order for results. If not given, results are sorted by
        # createdAt in descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          ASSIGNED_CAMPAIGNS_COUNT = :assignedCampaignsCount
          ASSIGNED_CAMPAIGNS_COUNT_DESC = :"-assignedCampaignsCount"
          BRAND_ID = :brandId
          BRAND_ID_DESC = :"-brandId"
          CREATED_AT = :createdAt
          CREATED_AT_DESC = :"-createdAt"
          DISPLAY_NAME = :displayName
          DISPLAY_NAME_DESC = :"-displayName"
          IDENTITY_STATUS = :identityStatus
          IDENTITY_STATUS_DESC = :"-identityStatus"
          STATUS = :status
          STATUS_DESC = :"-status"
          TCR_BRAND_ID = :tcrBrandId
          TCR_BRAND_ID_DESC = :"-tcrBrandId"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
