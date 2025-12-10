# frozen_string_literal: true

module Telnyx
  module Resources
    class Messaging10dlc
      # @return [Telnyx::Resources::Messaging10dlc::Brand]
      attr_reader :brand

      # @return [Telnyx::Resources::Messaging10dlc::Campaign]
      attr_reader :campaign

      # @return [Telnyx::Resources::Messaging10dlc::CampaignBuilder]
      attr_reader :campaign_builder

      # @return [Telnyx::Resources::Messaging10dlc::PartnerCampaigns]
      attr_reader :partner_campaigns

      # @return [Telnyx::Resources::Messaging10dlc::PhoneNumberCampaigns]
      attr_reader :phone_number_campaigns

      # @return [Telnyx::Resources::Messaging10dlc::PhoneNumberAssignmentByProfile]
      attr_reader :phone_number_assignment_by_profile

      # Get Enum
      #
      # @overload get_enum(endpoint, request_options: {})
      #
      # @param endpoint [Symbol, Telnyx::Models::Messaging10dlcGetEnumParams::Endpoint]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<String>, Array<Hash{Symbol=>Object}>, Hash{Symbol=>Object}, Telnyx::Models::Messaging10dlcGetEnumResponse::EnumPaginatedResponse]
      #
      # @see Telnyx::Models::Messaging10dlcGetEnumParams
      def get_enum(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["10dlc/enum/%1$s", endpoint],
          model: Telnyx::Models::Messaging10dlcGetEnumResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @brand = Telnyx::Resources::Messaging10dlc::Brand.new(client: client)
        @campaign = Telnyx::Resources::Messaging10dlc::Campaign.new(client: client)
        @campaign_builder = Telnyx::Resources::Messaging10dlc::CampaignBuilder.new(client: client)
        @partner_campaigns = Telnyx::Resources::Messaging10dlc::PartnerCampaigns.new(client: client)
        @phone_number_campaigns = Telnyx::Resources::Messaging10dlc::PhoneNumberCampaigns.new(client: client)
        @phone_number_assignment_by_profile =
          Telnyx::Resources::Messaging10dlc::PhoneNumberAssignmentByProfile.new(client: client)
      end
    end
  end
end
