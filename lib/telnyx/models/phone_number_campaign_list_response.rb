# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumberCampaigns#list
    class PhoneNumberCampaignListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute page
      #
      #   @return [Integer]
      required :page, Integer

      # @!attribute records
      #
      #   @return [Array<Telnyx::Models::PhoneNumberCampaign>]
      required :records, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberCampaign] }

      # @!attribute total_records
      #
      #   @return [Integer]
      required :total_records, Integer, api_name: :totalRecords

      # @!method initialize(page:, records:, total_records:)
      #   @param page [Integer]
      #   @param records [Array<Telnyx::Models::PhoneNumberCampaign>]
      #   @param total_records [Integer]
    end
  end
end
