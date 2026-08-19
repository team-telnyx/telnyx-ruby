# typed: strong

module Telnyx
  module Resources
    # User-defined tags for Telnyx resources
    class UserTags
      # Returns the user tags defined on your account, with support for filtering. Tags
      # help organize resources such as phone numbers.
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
