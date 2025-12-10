# typed: strong

module Telnyx
  module Resources
    class WirelessBlocklists
      # Create a Wireless Blocklist to prevent SIMs from connecting to certain networks.
      sig do
        params(
          name: String,
          type: Telnyx::WirelessBlocklistCreateParams::Type::OrSymbol,
          values: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WirelessBlocklistCreateResponse)
      end
      def create(
        # The name of the Wireless Blocklist.
        name:,
        # The type of wireless blocklist.
        type:,
        # Values to block. The values here depend on the `type` of Wireless Blocklist.
        values:,
        request_options: {}
      )
      end

      # Retrieve information about a Wireless Blocklist.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WirelessBlocklistRetrieveResponse)
      end
      def retrieve(
        # Identifies the wireless blocklist.
        id,
        request_options: {}
      )
      end

      # Update a Wireless Blocklist.
      sig do
        params(
          name: String,
          type: Telnyx::WirelessBlocklistUpdateParams::Type::OrSymbol,
          values: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WirelessBlocklistUpdateResponse)
      end
      def update(
        # The name of the Wireless Blocklist.
        name: nil,
        # The type of wireless blocklist.
        type: nil,
        # Values to block. The values here depend on the `type` of Wireless Blocklist.
        values: nil,
        request_options: {}
      )
      end

      # Get all Wireless Blocklists belonging to the user.
      sig do
        params(
          filter_name: String,
          filter_type: String,
          filter_values: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WirelessBlocklistListResponse)
      end
      def list(
        # The name of the Wireless Blocklist.
        filter_name: nil,
        # When the Private Wireless Gateway was last updated.
        filter_type: nil,
        # Values to filter on (inclusive).
        filter_values: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        request_options: {}
      )
      end

      # Deletes the Wireless Blocklist.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WirelessBlocklistDeleteResponse)
      end
      def delete(
        # Identifies the wireless blocklist.
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
