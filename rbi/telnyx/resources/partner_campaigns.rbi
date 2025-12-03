# typed: strong

module Telnyx
  module Resources
    class PartnerCampaigns
      # Retrieve campaign details by `campaignId`.
      sig do
        params(
          campaign_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::TelnyxDownstreamCampaign)
      end
      def retrieve(campaign_id, request_options: {})
      end

      # Update campaign details by `campaignId`. **Please note:** Only webhook urls are
      # editable.
      sig do
        params(
          campaign_id: String,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::TelnyxDownstreamCampaign)
      end
      def update(
        campaign_id,
        # Webhook failover to which campaign status updates are sent.
        webhook_failover_url: nil,
        # Webhook to which campaign status updates are sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Retrieve all partner campaigns you have shared to Telnyx in a paginated fashion.
      #
      # This endpoint is currently limited to only returning shared campaigns that
      # Telnyx has accepted. In other words, shared but pending campaigns are currently
      # omitted from the response from this endpoint.
      sig do
        params(
          page: Integer,
          records_per_page: Integer,
          sort: Telnyx::PartnerCampaignListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::PerPagePaginationV2[
            Telnyx::TelnyxDownstreamCampaign
          ]
        )
      end
      def list(
        # The 1-indexed page number to get. The default value is `1`.
        page: nil,
        # The amount of records per page, limited to between 1 and 500 inclusive. The
        # default value is `10`.
        records_per_page: nil,
        # Specifies the sort order for results. If not given, results are sorted by
        # createdAt in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Get all partner campaigns you have shared to Telnyx in a paginated fashion
      #
      # This endpoint is currently limited to only returning shared campaigns that
      # Telnyx has accepted. In other words, shared but pending campaigns are currently
      # omitted from the response from this endpoint.
      sig do
        params(
          page: Integer,
          records_per_page: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::PerPagePaginationV2[
            Telnyx::Models::PartnerCampaignListSharedByMeResponse
          ]
        )
      end
      def list_shared_by_me(
        # The 1-indexed page number to get. The default value is `1`.
        page: nil,
        # The amount of records per page, limited to between 1 and 500 inclusive. The
        # default value is `10`.
        records_per_page: nil,
        request_options: {}
      )
      end

      # Get Sharing Status
      sig do
        params(
          campaign_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T::Hash[Symbol, Telnyx::CampaignSharingStatus])
      end
      def retrieve_sharing_status(
        # ID of the campaign in question
        campaign_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
