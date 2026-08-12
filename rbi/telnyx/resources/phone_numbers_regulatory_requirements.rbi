# typed: strong

module Telnyx
  module Resources
    # Regulatory Requirements
    class PhoneNumbersRegulatoryRequirements
      # Returns the regulatory requirements that apply to the supplied comma-separated
      # phone numbers. The response includes the matching requirement records and
      # pagination metadata.
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
