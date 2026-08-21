# typed: strong

module Telnyx
  module Resources
    # Global IPs
    class GlobalIPs
      # Requests creation of a new Global IP, a static IP address announced from the
      # Telnyx network. Provisioning is asynchronous, so the request is accepted and the
      # Global IP becomes available once provisioning completes.
      sig do
        params(
          description: String,
          name: String,
          ports: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPCreateResponse)
      end
      def create(
        # A user specified description for the address.
        description: nil,
        # A user specified name for the address.
        name: nil,
        # A Global IP ports grouped by protocol code.
        ports: nil,
        request_options: {}
      )
      end

      # Returns the details of a single Global IP, including its address and current
      # configuration.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of the Global IPs on your account, including each IP's
      # address and configuration.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::GlobalIP])
      end
      def list(page_number: nil, page_size: nil, request_options: {})
      end

      # Deletes the specified Global IP and releases its address back to Telnyx.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
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
