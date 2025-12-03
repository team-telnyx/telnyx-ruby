# typed: strong

module Telnyx
  module Resources
    class NotificationEvents
      # Returns a list of your notifications events.
      sig do
        params(
          page: Telnyx::NotificationEventListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationEventListResponse)
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
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
