# typed: strong

module Telnyx
  module Resources
    class Number10dlc
      class PartnerCampaign
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
            Telnyx::Models::Number10dlc::PartnerCampaignGetSharedByMeResponse
          )
        end
        def get_shared_by_me(
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
        def get_sharing_status(
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
end
