# typed: strong

module Telnyx
  module Resources
    class Campaign
      class Osr
        # Get My Osr Campaign Attributes
        sig do
          params(
            campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def get_attributes(campaign_id, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
