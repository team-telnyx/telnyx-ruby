# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::PhoneNumberCampaigns#update
      class PhoneNumberCampaignUpdateParams < Telnyx::Models::Messaging10dlc::PhoneNumberCampaignCreate
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute campaign_phone_number
        #
        #   @return [String]
        required :campaign_phone_number, String

        # @!method initialize(campaign_phone_number:, request_options: {})
        #   @param campaign_phone_number [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
