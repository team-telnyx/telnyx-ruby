# typed: strong

module Telnyx
  module Resources
    class Messaging10dlc
      class Campaign
        # Campaign operations
        class Osr
          # Returns the optional shared-responsibility attributes recorded for the campaign.
          # Use these values to inspect the campaign configuration submitted to the
          # registry.
          sig do
            params(
              campaign_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T::Hash[Symbol, T.anything])
          end
          def get_attributes(
            # Unique identifier of the campaign.
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
end
