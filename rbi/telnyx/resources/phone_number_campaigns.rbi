# typed: strong

module Telnyx
  module Resources
    class PhoneNumberCampaigns
      # Create New Phone Number Campaign
      sig do
        params(
          campaign_id: String,
          phone_number: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PhoneNumberCampaign)
      end
      def create(
        # The ID of the campaign you want to link to the specified phone number.
        campaign_id:,
        # The phone number you want to link to a specified campaign.
        phone_number:,
        request_options: {}
      )
      end

      # Retrieve an individual phone number/campaign assignment by `phoneNumber`.
      sig do
        params(
          phone_number: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PhoneNumberCampaign)
      end
      def retrieve(phone_number, request_options: {})
      end

      # Create New Phone Number Campaign
      sig do
        params(
          path_phone_number: String,
          campaign_id: String,
          body_phone_number: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PhoneNumberCampaign)
      end
      def update(
        path_phone_number,
        # The ID of the campaign you want to link to the specified phone number.
        campaign_id:,
        # The phone number you want to link to a specified campaign.
        body_phone_number:,
        request_options: {}
      )
      end

      # Retrieve All Phone Number Campaigns
      sig do
        params(
          filter: Telnyx::PhoneNumberCampaignListParams::Filter::OrHash,
          page: Integer,
          records_per_page: Integer,
          sort: Telnyx::PhoneNumberCampaignListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PhoneNumberCampaignListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[telnyx_campaign_id], filter[telnyx_brand_id], filter[tcr_campaign_id],
        # filter[tcr_brand_id]
        filter: nil,
        page: nil,
        records_per_page: nil,
        # Specifies the sort order for results. If not given, results are sorted by
        # createdAt in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # This endpoint allows you to remove a campaign assignment from the supplied
      # `phoneNumber`.
      sig do
        params(
          phone_number: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PhoneNumberCampaign)
      end
      def delete(phone_number, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
