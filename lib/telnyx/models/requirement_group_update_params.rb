# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RequirementGroups#update
    class RequirementGroupUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute customer_reference
      #   Reference for the customer
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::RequirementGroupUpdateParams::RegulatoryRequirement>, nil]
      optional :regulatory_requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroupUpdateParams::RegulatoryRequirement] }

      # @!method initialize(customer_reference: nil, regulatory_requirements: nil, request_options: {})
      #   @param customer_reference [String] Reference for the customer
      #
      #   @param regulatory_requirements [Array<Telnyx::Models::RequirementGroupUpdateParams::RegulatoryRequirement>]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
        # @!attribute field_value
        #   New value for the regulatory requirement
        #
        #   @return [String, nil]
        optional :field_value, String

        # @!attribute requirement_id
        #   Unique identifier for the regulatory requirement
        #
        #   @return [String, nil]
        optional :requirement_id, String

        # @!method initialize(field_value: nil, requirement_id: nil)
        #   @param field_value [String] New value for the regulatory requirement
        #
        #   @param requirement_id [String] Unique identifier for the regulatory requirement
      end
    end
  end
end
