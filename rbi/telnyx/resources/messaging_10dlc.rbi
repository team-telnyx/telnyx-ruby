# typed: strong

module Telnyx
  module Resources
    class Messaging10dlc
      sig { returns(Telnyx::Resources::Messaging10dlc::Brand) }
      attr_reader :brand

      sig { returns(Telnyx::Resources::Messaging10dlc::Campaign) }
      attr_reader :campaign

      sig { returns(Telnyx::Resources::Messaging10dlc::CampaignBuilder) }
      attr_reader :campaign_builder

      sig { returns(Telnyx::Resources::Messaging10dlc::PartnerCampaigns) }
      attr_reader :partner_campaigns

      sig { returns(Telnyx::Resources::Messaging10dlc::PhoneNumberCampaigns) }
      attr_reader :phone_number_campaigns

      sig do
        returns(
          Telnyx::Resources::Messaging10dlc::PhoneNumberAssignmentByProfile
        )
      end
      attr_reader :phone_number_assignment_by_profile

      # Get Enum
      sig do
        params(
          endpoint: Telnyx::Messaging10dlcGetEnumParams::Endpoint::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::Messaging10dlcGetEnumResponse::Variants)
      end
      def get_enum(endpoint, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
