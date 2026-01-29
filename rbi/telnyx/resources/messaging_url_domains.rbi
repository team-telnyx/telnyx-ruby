# typed: strong

module Telnyx
  module Resources
    class MessagingURLDomains
      # List messaging URL domains
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::MessagingURLDomainListResponse
          ]
        )
      end
      def list(page_number: nil, page_size: nil, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
