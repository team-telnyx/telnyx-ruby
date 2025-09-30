# typed: strong

module Telnyx
  module Resources
    class UserTags
      # List all user tags.
      sig do
        params(
          filter: Telnyx::UserTagListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::UserTagListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[starts_with]
        filter: nil,
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
