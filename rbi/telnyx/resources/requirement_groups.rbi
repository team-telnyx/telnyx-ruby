# typed: strong

module Telnyx
  module Resources
    class RequirementGroups
      # Create a new requirement group
      sig do
        params(
          action: Telnyx::RequirementGroupCreateParams::Action::OrSymbol,
          country_code: String,
          phone_number_type:
            Telnyx::RequirementGroupCreateParams::PhoneNumberType::OrSymbol,
          customer_reference: String,
          regulatory_requirements:
            T::Array[
              Telnyx::RequirementGroupCreateParams::RegulatoryRequirement::OrHash
            ],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::RequirementGroup)
      end
      def create(
        action:,
        # ISO alpha 2 country code
        country_code:,
        phone_number_type:,
        customer_reference: nil,
        regulatory_requirements: nil,
        request_options: {}
      )
      end

      # Get a single requirement group by ID
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::RequirementGroup)
      end
      def retrieve(
        # ID of the requirement group to retrieve
        id,
        request_options: {}
      )
      end

      # Update requirement values in requirement group
      sig do
        params(
          id: String,
          customer_reference: String,
          regulatory_requirements:
            T::Array[
              Telnyx::RequirementGroupUpdateParams::RegulatoryRequirement::OrHash
            ],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::RequirementGroup)
      end
      def update(
        # ID of the requirement group
        id,
        # Reference for the customer
        customer_reference: nil,
        regulatory_requirements: nil,
        request_options: {}
      )
      end

      # List requirement groups
      sig do
        params(
          filter: Telnyx::RequirementGroupListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T::Array[Telnyx::RequirementGroup])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[country_code], filter[phone_number_type], filter[action], filter[status],
        # filter[customer_reference]
        filter: nil,
        request_options: {}
      )
      end

      # Delete a requirement group by ID
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::RequirementGroup)
      end
      def delete(
        # ID of the requirement group
        id,
        request_options: {}
      )
      end

      # Submit a Requirement Group for Approval
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::RequirementGroup)
      end
      def submit_for_approval(
        # ID of the requirement group to submit
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
