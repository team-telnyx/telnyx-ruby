# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      class PhoneNumberCampaignCreate < Telnyx::Internal::Type::BaseModel
        # @!attribute campaign_id
        #   The ID of the campaign you want to link to the specified phone number.
        #
        #   @return [String]
        required :campaign_id, String, api_name: :campaignId

        # @!attribute phone_number
        #   The phone number you want to link to a specified campaign.
        #
        #   @return [String]
        required :phone_number, String, api_name: :phoneNumber

        # @!method initialize(campaign_id:, phone_number:)
        #   @param campaign_id [String] The ID of the campaign you want to link to the specified phone number.
        #
        #   @param phone_number [String] The phone number you want to link to a specified campaign.
      end
    end
  end
end
