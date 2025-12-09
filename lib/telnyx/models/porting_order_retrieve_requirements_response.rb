# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#retrieve_requirements
    class PortingOrderRetrieveRequirementsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute field_type
      #   Type of value expected on field_value field
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderRetrieveRequirementsResponse::FieldType, nil]
      optional :field_type, enum: -> { Telnyx::Models::PortingOrderRetrieveRequirementsResponse::FieldType }

      # @!attribute field_value
      #   Identifies the document that satisfies this requirement
      #
      #   @return [String, nil]
      optional :field_value, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute requirement_status
      #   Status of the requirement
      #
      #   @return [String, nil]
      optional :requirement_status, String

      # @!attribute requirement_type
      #   Identifies the requirement type that meets this requirement
      #
      #   @return [Telnyx::Models::PortingOrderRetrieveRequirementsResponse::RequirementType, nil]
      optional :requirement_type,
               -> { Telnyx::Models::PortingOrderRetrieveRequirementsResponse::RequirementType }

      # @!method initialize(field_type: nil, field_value: nil, record_type: nil, requirement_status: nil, requirement_type: nil)
      #   @param field_type [Symbol, Telnyx::Models::PortingOrderRetrieveRequirementsResponse::FieldType] Type of value expected on field_value field
      #
      #   @param field_value [String] Identifies the document that satisfies this requirement
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param requirement_status [String] Status of the requirement
      #
      #   @param requirement_type [Telnyx::Models::PortingOrderRetrieveRequirementsResponse::RequirementType] Identifies the requirement type that meets this requirement

      # Type of value expected on field_value field
      #
      # @see Telnyx::Models::PortingOrderRetrieveRequirementsResponse#field_type
      module FieldType
        extend Telnyx::Internal::Type::Enum

        DOCUMENT = :document
        TEXTUAL = :textual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::PortingOrderRetrieveRequirementsResponse#requirement_type
      class RequirementType < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the requirement type
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute acceptance_criteria
        #   The acceptance criteria for the requirement type
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :acceptance_criteria, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute description
        #   A description of the requirement type
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute example
        #   An example of the requirement type
        #
        #   @return [String, nil]
        optional :example, String

        # @!attribute name
        #   The name of the requirement type
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute type
        #   The type of the requirement type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, acceptance_criteria: nil, description: nil, example: nil, name: nil, type: nil)
        #   Identifies the requirement type that meets this requirement
        #
        #   @param id [String] Identifies the requirement type
        #
        #   @param acceptance_criteria [Hash{Symbol=>Object}] The acceptance criteria for the requirement type
        #
        #   @param description [String] A description of the requirement type
        #
        #   @param example [String] An example of the requirement type
        #
        #   @param name [String] The name of the requirement type
        #
        #   @param type [String] The type of the requirement type
      end
    end
  end
end
