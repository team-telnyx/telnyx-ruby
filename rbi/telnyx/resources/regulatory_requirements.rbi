# typed: strong

module Telnyx
  module Resources
    class RegulatoryRequirements
      # Retrieve regulatory requirements
      sig do
        params(
          filter: Telnyx::RegulatoryRequirementRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RegulatoryRequirementRetrieveResponse)
      end
      def retrieve(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number], filter[requirement_group_id], filter[country_code],
        # filter[phone_number_type], filter[action]
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
