# typed: strong

module Telnyx
  module Resources
    class PhoneNumbersRegulatoryRequirements
      # Retrieve regulatory requirements for a list of phone numbers
      sig do
        params(
          filter:
            Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse
        )
      end
      def retrieve(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number]
        filter: nil,
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
