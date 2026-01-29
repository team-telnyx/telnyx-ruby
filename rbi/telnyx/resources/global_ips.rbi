# typed: strong

module Telnyx
  module Resources
    class GlobalIPs
      # Create a Global IP.
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

      # Retrieve a Global IP.
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

      # List all Global IPs.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::GlobalIPListResponse
          ]
        )
      end
      def list(page_number: nil, page_size: nil, request_options: {})
      end

      # Delete a Global IP.
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
