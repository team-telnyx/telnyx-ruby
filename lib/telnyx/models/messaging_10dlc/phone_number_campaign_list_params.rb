# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::PhoneNumberCampaigns#list
      class PhoneNumberCampaignListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[telnyx_campaign_id], filter[telnyx_brand_id], filter[tcr_campaign_id],
        #   filter[tcr_brand_id]
        #
        #   @return [Telnyx::Models::Messaging10dlc::PhoneNumberCampaignListParams::Filter, nil]
        optional :filter, -> { Telnyx::Messaging10dlc::PhoneNumberCampaignListParams::Filter }

        # @!attribute page
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!attribute records_per_page
        #
        #   @return [Integer, nil]
        optional :records_per_page, Integer

        # @!attribute sort
        #   Specifies the sort order for results. If not given, results are sorted by
        #   createdAt in descending order.
        #
        #   @return [Symbol, Telnyx::Models::Messaging10dlc::PhoneNumberCampaignListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::Messaging10dlc::PhoneNumberCampaignListParams::Sort }

        # @!method initialize(filter: nil, page: nil, records_per_page: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Messaging10dlc::PhoneNumberCampaignListParams} for more
        #   details.
        #
        #   @param filter [Telnyx::Models::Messaging10dlc::PhoneNumberCampaignListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[telnyx_camp
        #
        #   @param page [Integer]
        #
        #   @param records_per_page [Integer]
        #
        #   @param sort [Symbol, Telnyx::Models::Messaging10dlc::PhoneNumberCampaignListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute tcr_brand_id
          #   Filter results by the TCR Brand id
          #
          #   @return [String, nil]
          optional :tcr_brand_id, String

          # @!attribute tcr_campaign_id
          #   Filter results by the TCR Campaign id
          #
          #   @return [String, nil]
          optional :tcr_campaign_id, String

          # @!attribute telnyx_brand_id
          #   Filter results by the Telnyx Brand id
          #
          #   @return [String, nil]
          optional :telnyx_brand_id, String

          # @!attribute telnyx_campaign_id
          #   Filter results by the Telnyx Campaign id
          #
          #   @return [String, nil]
          optional :telnyx_campaign_id, String

          # @!method initialize(tcr_brand_id: nil, tcr_campaign_id: nil, telnyx_brand_id: nil, telnyx_campaign_id: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[telnyx_campaign_id], filter[telnyx_brand_id], filter[tcr_campaign_id],
          #   filter[tcr_brand_id]
          #
          #   @param tcr_brand_id [String] Filter results by the TCR Brand id
          #
          #   @param tcr_campaign_id [String] Filter results by the TCR Campaign id
          #
          #   @param telnyx_brand_id [String] Filter results by the Telnyx Brand id
          #
          #   @param telnyx_campaign_id [String] Filter results by the Telnyx Campaign id
        end

        # Specifies the sort order for results. If not given, results are sorted by
        # createdAt in descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          ASSIGNMENT_STATUS = :assignmentStatus
          ASSIGNMENT_STATUS_DESC = :"-assignmentStatus"
          CREATED_AT = :createdAt
          CREATED_AT_DESC = :"-createdAt"
          PHONE_NUMBER = :phoneNumber
          PHONE_NUMBER_DESC = :"-phoneNumber"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
