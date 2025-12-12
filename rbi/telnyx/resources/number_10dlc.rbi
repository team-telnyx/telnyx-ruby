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

      sig { returns(Telnyx::Resources::Number10dlc::PhoneNumberCampaigns) }
      attr_reader :phone_number_campaigns

      # Get Enum
      sig do
        params(
          endpoint: Telnyx::Number10dlcGetEnumParams::Endpoint::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::Number10dlcGetEnumResponse::Variants)
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
