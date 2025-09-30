# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PartnerCampaigns#list
    class PartnerCampaignListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute records
      #
      #   @return [Array<Telnyx::Models::TelnyxDownstreamCampaign>, nil]
      optional :records, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::TelnyxDownstreamCampaign] }

      # @!attribute total_records
      #
      #   @return [Integer, nil]
      optional :total_records, Integer, api_name: :totalRecords

      # @!method initialize(page: nil, records: nil, total_records: nil)
      #   @param page [Integer]
      #   @param records [Array<Telnyx::Models::TelnyxDownstreamCampaign>]
      #   @param total_records [Integer]
    end
  end
end
