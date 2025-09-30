# typed: strong

module Telnyx
  module Resources
    class Campaign
      class Usecase
        # Get Campaign Cost
        sig do
          params(
            usecase: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Campaign::UsecaseGetCostResponse)
        end
        def get_cost(usecase:, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
