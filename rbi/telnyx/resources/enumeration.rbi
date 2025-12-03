# typed: strong

module Telnyx
  module Resources
    class Enumeration
      # Get Enum
      sig do
        params(
          endpoint: Telnyx::EnumerationRetrieveParams::Endpoint::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EnumerationRetrieveResponse::Variants)
      end
      def retrieve(endpoint, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
