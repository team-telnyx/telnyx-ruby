# typed: strong

module Telnyx
  module Resources
    class Number10dlc
      sig { returns(Telnyx::Resources::Number10dlc::Brand) }
      attr_reader :brand

      sig { returns(Telnyx::Resources::Number10dlc::Campaign) }
      attr_reader :campaign

      sig { returns(Telnyx::Resources::Number10dlc::CampaignBuilder) }
      attr_reader :campaign_builder

      sig { returns(Telnyx::Resources::Number10dlc::PartnerCampaign) }
      attr_reader :partner_campaign

      sig { returns(Telnyx::Resources::Number10dlc::PartnerCampaigns) }
      attr_reader :partner_campaigns

      sig do
        returns(Telnyx::Resources::Number10dlc::PhoneNumberAssignmentByProfile)
      end
      attr_reader :phone_number_assignment_by_profile

      sig { returns(Telnyx::Resources::Number10dlc::PhoneNumberCampaigns) }
      attr_reader :phone_number_campaigns

      # Get Enum
      sig do
        params(
          endpoint: Telnyx::Number10dlcRetrieveParams::Endpoint::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::Number10dlcRetrieveResponse::Variants)
      end
      def retrieve(endpoint, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
