# typed: strong

module Telnyx
  module Resources
    class MessagingURLDomains
      # List messaging URL domains
      sig do
        params(
          page: Telnyx::MessagingURLDomainListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingURLDomainListResponse)
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
