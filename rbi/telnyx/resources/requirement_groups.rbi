# typed: strong

module Telnyx
  module Resources
    # Requirement Groups
    class RequirementGroups
      # Creates a regulatory requirement group for a country, number type, and ordering
      # or porting action. Optional customer-reference and requirement values are
      # retained on the created group.
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

      # Returns the regulatory requirement group identified by `id`, including its
      # requirement values and current approval status.
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

      # Updates the customer reference or regulatory requirement values on the specified
      # requirement group. The response contains the updated group.
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

      # Returns regulatory requirement groups for the account. Results can be filtered
      # by country, number type, action, approval status, and customer reference.
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

      # Deletes the regulatory requirement group identified by `id`. The response
      # contains the deleted requirement-group representation.
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

      # Submits the specified regulatory requirement group for approval. The response
      # contains the requirement group with its resulting approval status.
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
