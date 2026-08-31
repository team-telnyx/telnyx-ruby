# typed: strong

module Telnyx
  module Resources
    # Wireless Blocklists operations
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

      # Updates the specified wireless blocklist. The update is processed
      # asynchronously, so the request is accepted and completes in the background.
      sig do
        params(
          id: String,
          name: String,
          values: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WirelessBlocklistUpdateResponse)
      end
      def update(
        # Identifies the wireless blocklist.
        id,
        # The name of the Wireless Blocklist.
        name: nil,
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
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::WirelessWirelessBlocklist
          ]
        )
      end
      def list(
        # The name of the Wireless Blocklist.
        filter_name: nil,
        # When the Private Wireless Gateway was last updated.
        filter_type: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        request_options: {}
      )
      end

      # Permanently deletes the specified wireless blocklist from your account. The
      # request returns `422` when the wireless blocklist is assigned to a SIM Card
      # Group.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
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
