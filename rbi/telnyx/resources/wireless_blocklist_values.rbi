# typed: strong

module Telnyx
  module Resources
    class WirelessBlocklistValues
      # Retrieve all wireless blocklist values for a given blocklist type.
      sig do
        params(
          type: Telnyx::WirelessBlocklistValueListParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WirelessBlocklistValueListResponse)
      end
      def list(
        # The Wireless Blocklist type for which to list possible values (e.g., `country`,
        # `mcc`, `plmn`).
        type:,
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
