# typed: strong

module Telnyx
  module Resources
    class NumberOrderPhoneNumbers
      # Get an existing phone number in number order.
      sig do
        params(
          number_order_phone_number_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberOrderPhoneNumberRetrieveResponse)
      end
      def retrieve(
        # The number order phone number ID.
        number_order_phone_number_id,
        request_options: {}
      )
      end

      # Get a list of phone numbers associated to orders.
      sig do
        params(
          filter: Telnyx::NumberOrderPhoneNumberListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberOrderPhoneNumberListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[country_code]
        filter: nil,
        request_options: {}
      )
      end

      # Update requirement group for a phone number order
      sig do
        params(
          id: String,
          requirement_group_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse
        )
      end
      def update_requirement_group(
        # The unique identifier of the number order phone number
        id,
        # The ID of the requirement group to associate
        requirement_group_id:,
        request_options: {}
      )
      end

      # Updates requirements for a single phone number within a number order.
      sig do
        params(
          number_order_phone_number_id: String,
          regulatory_requirements:
            T::Array[Telnyx::UpdateRegulatoryRequirement::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementsResponse
        )
      end
      def update_requirements(
        # The number order phone number ID.
        number_order_phone_number_id,
        regulatory_requirements: nil,
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
