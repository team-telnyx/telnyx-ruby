# typed: strong

module Telnyx
  module Resources
    class Enum
      # Get Enum
      sig do
        params(
          endpoint: Telnyx::EnumRetrieveParams::Endpoint::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EnumRetrieveResponse::Variants)
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
