# typed: strong

module Telnyx
  module Resources
    # Look up phone number data
    class NumberLookup
      # Returns information about the provided phone number.
      sig do
        params(
          phone_number: String,
          type: Telnyx::NumberLookupRetrieveParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberLookupRetrieveResponse)
      end
      def retrieve(
        # The phone number to be looked up
        phone_number,
        # Specifies the type of number lookup to be performed. May be supplied more than
        # once to request several data sources in a single call (for example,
        # `?type=carrier&type=enhanced-caller-name`). Each requested type populates the
        # corresponding object in the response.
        type: nil,
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
