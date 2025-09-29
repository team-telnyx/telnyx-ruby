# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Campaign#list
    class CampaignListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute brand_id
      #
      #   @return [String]
      required :brand_id, String

      # @!attribute page
      #   The 1-indexed page number to get. The default value is `1`.
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute records_per_page
      #   The amount of records per page, limited to between 1 and 500 inclusive. The
      #   default value is `10`.
      #
      #   @return [Integer, nil]
      optional :records_per_page, Integer

      # @!attribute sort
      #   Specifies the sort order for results. If not given, results are sorted by
      #   createdAt in descending order.
      #
      #   @return [Symbol, Telnyx::Models::CampaignListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::CampaignListParams::Sort }

      # @!method initialize(brand_id:, page: nil, records_per_page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CampaignListParams} for more details.
      #
      #   @param brand_id [String]
      #
      #   @param page [Integer] The 1-indexed page number to get. The default value is `1`.
      #
      #   @param records_per_page [Integer] The amount of records per page, limited to between 1 and 500 inclusive. The defa
      #
      #   @param sort [Symbol, Telnyx::Models::CampaignListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Specifies the sort order for results. If not given, results are sorted by
      # createdAt in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        ASSIGNED_PHONE_NUMBERS_COUNT = :assignedPhoneNumbersCount
        ASSIGNED_PHONE_NUMBERS_COUNT_DESC = :"-assignedPhoneNumbersCount"
        CAMPAIGN_ID = :campaignId
        CAMPAIGN_ID_DESC = :"-campaignId"
        CREATED_AT = :createdAt
        CREATED_AT_DESC = :"-createdAt"
        STATUS = :status
        STATUS_DESC = :"-status"
        TCR_CAMPAIGN_ID = :tcrCampaignId
        TCR_CAMPAIGN_ID_DESC = :"-tcrCampaignId"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
